// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub const HEADER_SRC: &str = r#"#ifndef {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_H
#define {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_H

#include <stdint.h>
#include <stdlib.h>

#define {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_KEY_LEN {key_len}
#define {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_NONCE_LEN {nonce_len}
#define {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_TAG_LEN {tag_len}

__attribute__((aligned({struct_alignment})))
typedef struct {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t {
  uint8_t value[{struct_size}];
} {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int {prefix}_{algorithm:Flat}_{profile}_init(
    {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t *aead,
    const unsigned char *key,         size_t key_len);
int {prefix}_{algorithm:Flat}_{profile}_encrypt(
    {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t *const aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int {prefix}_{algorithm:Flat}_{profile}_decrypt(
    {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t *const aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int {prefix}_{algorithm:Flat}_{profile}_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_H */
"#;
pub const TEST_SRC: &str = r#"#include "{algorithm:Flat}_{profile}.h"

int main(void) {
  {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t aead;
  unsigned char key[{prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_KEY_LEN] = {0};
  unsigned char nonce[{prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_NONCE_LEN] = {0};
  unsigned char tag[{prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};

  if (!{prefix}_{algorithm:Flat}_{profile}_is_supported()) {
    return 0;
  }

  if (!{prefix}_{algorithm:Flat}_{profile}_init(&aead, key, sizeof(key))) {
    return 1;
  }
  if (!{prefix}_{algorithm:Flat}_{profile}_encrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), plaintext, sizeof(plaintext), ciphertext, sizeof(ciphertext), tag, sizeof(tag))) {
    return 2;
  }
  if (!{prefix}_{algorithm:Flat}_{profile}_decrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), ciphertext, sizeof(ciphertext), tag, sizeof(tag), plaintext, sizeof(plaintext))) {
    return 3;
  }
  return 0;
}
"#;

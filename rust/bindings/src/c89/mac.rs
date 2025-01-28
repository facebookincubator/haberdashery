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
#define {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_TAG_LEN {tag_len}

__attribute__((aligned({struct_alignment})))
typedef struct {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t {
  uint8_t value[{struct_size}];
} {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int {prefix}_{algorithm:Flat}_{profile}_init(
    {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t *mac,
    const unsigned char *key,         size_t key_len);
int {prefix}_{algorithm:Flat}_{profile}_sign(
    const {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t *mac,
    const unsigned char *message,     size_t message_len,
    unsigned char *tag,               size_t tag_len);
int {prefix}_{algorithm:Flat}_{profile}_verify(
    const {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t *mac,
    const unsigned char *message,     size_t message_len,
    const unsigned char *tag,         size_t tag_len);
int {prefix}_{algorithm:Flat}_{profile}_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_H */
"#;
pub const TEST_SRC: &str = r#"#include "{algorithm:Flat}_{profile}.h"

int main(void) {
  {prefix:Snake}_{algorithm:Flat}_{profile:Snake}_t mac;
  unsigned char key[{prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_KEY_LEN] = {0};
  unsigned char tag[{prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_TAG_LEN] = {0};
  unsigned char message[1] = {0};

  if (!{prefix}_{algorithm:Flat}_{profile}_is_supported()) {
    return 0;
  }

  if (!{prefix}_{algorithm:Flat}_{profile}_init(&mac, key, sizeof(key))) {
    return 1;
  }
  if (!{prefix}_{algorithm:Flat}_{profile}_sign(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 2;
  }
  if (!{prefix}_{algorithm:Flat}_{profile}_verify(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 3;
  }
  return 0;
}
"#;

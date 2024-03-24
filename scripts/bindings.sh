#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

PROJECT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")/.."; pwd )"
readonly PROJECT_DIR

generate_aead() {
  local -r ALG="${1}"

  # rust sys
  rm -f "${PROJECT_DIR}"/rust/sys/src/aead/"${ALG}"/*.rs
  rm -f "${PROJECT_DIR}"/rust/sys/benchmarks/src/aead/"${ALG}"/*.rs
  rm -f "${PROJECT_DIR}"/rust/sys/traits/src/aead/"${ALG}"/*.rs
  cargo run -- \
    --language=rust_sys \
    --out-dir="${PROJECT_DIR}/rust/sys/src" \
    --descriptor-dir="${PROJECT_DIR}/descriptor_yaml/${ALG}" \
    --primitive=aead

  # c
  rm -f "${PROJECT_DIR}"/c/aead/"${ALG}"/*.h
  rm -f "${PROJECT_DIR}"/c/aead/"${ALG}"/*.c
  cargo run -- \
    --language=c \
    --out-dir="${PROJECT_DIR}/c" \
    --descriptor-dir="${PROJECT_DIR}/descriptor_yaml/${ALG}" \
    --primitive=aead
}

generate_mac() {
  local -r ALG="${1}"

  # rust sys
  rm -f "${PROJECT_DIR}"/rust/sys/src/mac/"${ALG}"/*.rs
  rm -f "${PROJECT_DIR}"/rust/sys/benchmarks/src/mac/"${ALG}"/*.rs
  rm -f "${PROJECT_DIR}"/rust/sys/traits/src/mac/"${ALG}"/*.rs
  cargo run -- \
    --language=rust_sys \
    --out-dir="${PROJECT_DIR}/rust/sys/src" \
    --descriptor-dir="${PROJECT_DIR}/descriptor_yaml/${ALG}" \
    --primitive=mac

  # c
  rm -f "${PROJECT_DIR}"/c/mac/"${ALG}"/*.h
  rm -f "${PROJECT_DIR}"/c/mac/"${ALG}"/*.c
  cargo run -- \
    --language=c \
    --out-dir="${PROJECT_DIR}/c" \
    --descriptor-dir="${PROJECT_DIR}/descriptor_yaml/${ALG}" \
    --primitive=mac
}

main() {
  cd "${PROJECT_DIR}/rust/template-bindings"
  generate_aead aes256gcm
  generate_aead aes256gcmdndk
  generate_aead aes256gcmsiv
  generate_mac sivmac
}

main "$@"

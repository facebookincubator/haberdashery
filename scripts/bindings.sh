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
DESCRIPTOR_DIR="${PROJECT_DIR}/descriptors"
readonly DESCRIPTOR_DIR
BINDINGS_DIR="${PROJECT_DIR}/bindings"
readonly BINDINGS_DIR

echo_with_date() {
  date=$(date)
  echo -e "[${date}]\t${1}"
}

rust_sys() {
  echo_with_date "bindings/rust_sys generating"
  rm -rf "${BINDINGS_DIR}/rust_sys"
  cd "${PROJECT_DIR}/rust/bindings"
  cargo run -q -- \
    --bindings-path="${BINDINGS_DIR}"  \
    --descriptor-path="${DESCRIPTOR_DIR}" \
    --name=rust_sys

  echo_with_date "bindings/rust_sys testing"
  cargo test -q --all-features
  cargo test -q --all-features --release
}

rust_lib() {
  echo_with_date "bindings/rust_lib generating"
  rm -f "${BINDINGS_DIR}/rust_lib/src/Cargo.toml"
  rm -f "${BINDINGS_DIR}/rust_lib/src/aead.rs"
  rm -f "${BINDINGS_DIR}/rust_lib/src/mac.rs"
  rm -rf "${BINDINGS_DIR}/rust_lib/src/aead"
  rm -rf "${BINDINGS_DIR}/rust_lib/src/mac"
  cd "${PROJECT_DIR}/rust/bindings"
  cargo run -q -- \
    --bindings-path="${BINDINGS_DIR}"  \
    --descriptor-path="${DESCRIPTOR_DIR}" \
    --name=rust_lib
  echo_with_date "bindings/rust_lib testing"
  cd "${BINDINGS_DIR}/rust_lib"
  cargo test -q
}

rust_bench() {
  echo_with_date "bindings/rust_bench generating"
  rm -f "${BINDINGS_DIR}/rust_bench/src/Cargo.toml"
  cd "${PROJECT_DIR}/rust/bindings"
  cargo run -q -- \
    --bindings-path="${BINDINGS_DIR}"  \
    --descriptor-path="${DESCRIPTOR_DIR}" \
    --name=rust_bench

  echo_with_date "bindings/rust_bench testing"
  cd "${BINDINGS_DIR}/rust_bench"
  cargo test -q --all-targets 1>/dev/null
}

c89() {
  echo_with_date "bindings/c89 generating"
  rm -rf "${BINDINGS_DIR}/c89"
  cd "${PROJECT_DIR}/rust/bindings"
  cargo run -q -- \
    --bindings-path="${BINDINGS_DIR}"  \
    --descriptor-path="${DESCRIPTOR_DIR}" \
    --name=c89
  echo_with_date "bindings/c89 testing"
  cd "${BINDINGS_DIR}/c89/aead"
  make
  cd "${BINDINGS_DIR}/c89/mac"
  make
}

openssl_evp() {
  echo_with_date "bindings/openssl_evp generating"
  rm -rf "${BINDINGS_DIR}/openssl_evp"
  cd "${PROJECT_DIR}/rust/bindings"
  cargo run -q -- \
    --bindings-path="${BINDINGS_DIR}"  \
    --descriptor-path="${DESCRIPTOR_DIR}" \
    --name=openssl_evp
  echo_with_date "bindings/openssl_evp testing"
  cd "${BINDINGS_DIR}/openssl_evp/aead_streaming"
  make
}

main() {
  if [ $# -eq 0 ]; then
    rust_sys
    rust_lib
    rust_bench
    c89
    openssl_evp
  else
    "${1}"
  fi
}

main "$@"

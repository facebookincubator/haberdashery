#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

PROJECT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")/.." && pwd )"
readonly PROJECT_DIR

filter_exclusions() {
  local -r FILE="${1}"; shift
  local -r EXCLUSIONS=(
    bindings/rust_sys/units # tested indirectly by rust_sys
    rust/asm-gen-arm # doesn't work on x86
    rust/aws-lc # slow to compile, only for benchmarking
    rust/libsodium # slow to compile, only for benchmarking
    rust/openssl # slow to compile, only for benchmarking
  )
  for ex in "${EXCLUSIONS[@]}"; do
    if [[ ${FILE} =~ ${ex} ]]; then
      true
      return
    fi
  done
  false
}

main() {
  cd "${PROJECT_DIR}"
  if [ $# -ne 0 ]; then
    local -r SUBDIR="${1}"; shift
  else
    local -r SUBDIR="."
  fi
  cd "${SUBDIR}"
  shopt -s globstar
  for file in **/Cargo.toml; do
    local CRATE
    CRATE="$(dirname "${file}")"
    if filter_exclusions "${SUBDIR}/${CRATE}"; then
      continue
    fi
    pushd "${CRATE}" > /dev/null
    echo "*** Started  testing ${CRATE} ${*}"
    cargo test -q "${@}"
    echo "*** Finished testing ${CRATE} ${*}"
    popd > /dev/null
  done
}

main "$@"

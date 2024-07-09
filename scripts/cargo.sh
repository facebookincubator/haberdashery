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

cargo_test() {
  local -r CRATE="${1}"; shift
  echo "*** Started  testing ${CRATE} ${*}"
  cd "${PROJECT_DIR}/${CRATE}"
  cargo test -q "${@}"
  echo "*** Finished testing ${CRATE} ${*}"
}

main() {
  if [ $# -eq 0 ]; then
    cargo_test rust/asm-gen
    cargo_test rust/bindings
    cargo_test rust/bindings/bindings-proc
    cargo_test rust/cozybuf
    cargo_test rust/cozybuf/cozybuf-example
    cargo_test rust/cozybuf/cozybuf-proc
    cargo_test rust/cpuid
    cargo_test rust/hex
    cargo_test rust/nano-bench-proc
    cargo_test rust/nano-bench
    cargo_test rust/random
    cargo_test rust/sflags
    cargo_test rust/sflags/test-helper
    cargo_test rust/test-vectors
    cargo_test rust/units
    cargo_test bindings/rust_sys --all-features
    cargo_test bindings/rust_lib
    cargo_test bindings/rust_bench
  else
    cargo_test "$@"
  fi
}

main "$@"

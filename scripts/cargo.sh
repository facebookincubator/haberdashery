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
  local -r CRATE="rust/${1}"; shift
  echo "*** Started  testing ${CRATE} ${*}"
  cd "${PROJECT_DIR}/${CRATE}"
  cargo test -q "${@}"
  echo "*** Finished testing ${CRATE} ${*}"
}

main() {
  if [ $# -eq 0 ]; then
    cargo_test asm-checksums
    cargo_test asm-gen
    cargo_test cozybuf
    cargo_test cozybuf/cozybuf-example
    cargo_test cozybuf/cozybuf-proc
    cargo_test cpuid
    cargo_test ffi-util
    cargo_test hex
    cargo_test nano-bench-proc
    cargo_test nano-bench
    cargo_test random
    cargo_test sys
    cargo_test sys/traits
    cargo_test sys/benchmarks
    cargo_test template-bindings
    cargo_test template-descriptor
    cargo_test template-proc
    cargo_test test-vectors
    cargo_test units
  else
    cargo_test "$@"
  fi
}

main "$@"

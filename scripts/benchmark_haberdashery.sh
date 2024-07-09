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

bench_single() {
  "${PROJECT_DIR}/scripts/benchmark.sh" alt-haberdashery "${@}"
}

bench_all() {
  local -r PROFILE="$(cargo run -q --manifest-path="${PROJECT_DIR}/rust/cpuid/Cargo.toml" -- canonical)"
  for target in "${PROJECT_DIR}/bindings/rust_lib/src/aead/"*"_${PROFILE}.rs"
  do
    bench_single "$(basename "${target}" .rs)" "${@}"
  done
  for target in "${PROJECT_DIR}/bindings/rust_lib/src/mac/"*"_${PROFILE}.rs"
  do
    bench_single "$(basename "${target}" .rs)" "${@}"
  done
}

main() {
  CMD="all"
  if [ $# -ne 0 ]; then
    CMD="${1}"; shift
  fi
  case "${CMD}" in
    "all")
      bench_all "${@}"
      ;;
    *)
      bench_single "${CMD}" "${@}"
      ;;
  esac
}

main "${@}"

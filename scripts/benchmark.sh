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

main() {
  if [ $# -eq 0 ]; then
      echo "usage: ${0} haberdashery"
      exit 1
  fi
  local -r LIB_NAME="${1}"; shift
  EXTRA_FLAGS=()
  RUST_FLAGS=()
  case "${LIB_NAME}" in
    "haberdashery")
      LIB_DIR="${PROJECT_DIR}/bindings/rust_bench"
      ;;
    "x25519")
      LIB_DIR="${PROJECT_DIR}/bindings/x25519"
      ;;
    "openssl")
      LIB_DIR="${PROJECT_DIR}/rust/openssl"
      ;;
    "libsodium")
      LIB_DIR="${PROJECT_DIR}/rust/libsodium"
      ;;
    "aws-lc")
      LIB_DIR="${PROJECT_DIR}/rust/aws-lc"
      ;;
    "aegis")
      LIB_DIR="${PROJECT_DIR}/rust/aegis-benchmarks"
      ;;
    *)
      echo "usage: ${0} haberdashery"
      exit 1
      ;;
  esac
  cd "${LIB_DIR}"
  cargo bench \
    "${RUST_FLAGS[@]}" \
    -- \
    --length=0,16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,256,384,512,640,768,896,1024,1152,1280,1408,1536,1664,1792,1920,2048,2176,2304,2432,2560,2688,2816,2944,3072,3200,3328,3456,3584,3712,3840,3968,4096,16kb,32kb,48kb,64kb,80kb,96kb,112kb,128kb,256kb,384kb,512kb,640kb,768kb,896kb,1024kb \
    --csv-out="${PROJECT_DIR}"/benchmark_data/csv \
    --md-out="${PROJECT_DIR}"/benchmark_data/md \
    --runtime=100ms --runs=10 \
    --by-alg \
    "${@}" \
    "${EXTRA_FLAGS[@]}"
}

main "${@}"

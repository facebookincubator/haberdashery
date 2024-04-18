#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

SCRIPT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")"; pwd )"
readonly SCRIPT_DIR

ROOT_DIR="$( cd -P "$(dirname "${BASH_SOURCE[0]}")/../../../"; pwd )"
readonly ROOT_DIR

main() {
  cd "${SCRIPT_DIR}"
  local -r TARGET="$(basename "${PWD}")"
  local -r GEN="${ROOT_DIR}/rust/asm-gen/asm.sh"
  if [ $# -eq 0 ]; then
    "${GEN}" "tigerlake" "${TARGET}" "${ROOT_DIR}"
    "${GEN}" "skylakex" "${TARGET}" "${ROOT_DIR}"
    "${GEN}" "skylake" "${TARGET}" "${ROOT_DIR}"
    "${GEN}" "broadwell" "${TARGET}" "${ROOT_DIR}"
    "${GEN}" "haswell" "${TARGET}" "${ROOT_DIR}"
  else
    local -r PROFILE="${1}"; shift
    "${GEN}" "${PROFILE}" "${TARGET}" "${ROOT_DIR}"
  fi
}

main "$@"

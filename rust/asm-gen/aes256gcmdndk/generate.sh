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
  local -r TARGET="aes256gcmdndk"
  # shellcheck disable=SC1091
  source "${ROOT_DIR}/rust/asm-gen/asm.sh"
  cd "${SCRIPT_DIR}"
  gen_skylake "${TARGET}" "${ROOT_DIR}"
  gen_haswell "${TARGET}" "${ROOT_DIR}"
}

main "$@"

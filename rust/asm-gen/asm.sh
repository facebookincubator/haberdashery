#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -eu -o pipefail

main() {
  local -r PROFILE="${1}"; shift
  local -r TARGET="${1}"; shift
  local -r BASE_DIR="${1}"; shift

  case "${PROFILE}" in
    "haswell")
      CPU="haswell"
      CPU_FEATURES="+aes"
      ;;
    "broadwell")
      CPU="broadwell"
      CPU_FEATURES="+aes"
      ;;
    "skylake")
      CPU="skylake"
      CPU_FEATURES="-xsavec,-xsaves"
      ;;
    "skylakex")
      CPU="skylake-avx512"
      CPU_FEATURES="-xsavec,-xsaves"
      ;;
    "tigerlake")
      CPU="tigerlake"
      CPU_FEATURES="-xsavec,-xsaves"
      ;;
    *)
      echo "Unsupported profile: ${PROFILE}"
      exit 1
      ;;
  esac

  local -r ASM_FILENAME="${TARGET}_${PROFILE}.s"
  local -r ASM_DIR="${BASE_DIR}/asm"
  local -r ASM_PATH="${ASM_DIR}/${ASM_FILENAME}"
  export DESCRIPTOR_DIR="${BASE_DIR}/descriptor_yaml"

  cargo clean -r -p "${TARGET}" || true
  cargo \
    rustc \
    --features "${PROFILE}" \
    --release \
    -q \
    -- \
    -C target-cpu="${CPU}" \
    -C target-feature="${CPU_FEATURES}" \
    --emit asm="${ASM_PATH}"
  if [ "$(head -n 1 "${ASM_PATH}")" != "# @""generated" ]
  then
    sed -i '1s|^|# @''generated\n# https://github.com/facebookincubator/haberdashery/\n|' "${ASM_PATH}"
  fi
  sed -i '/.file/d' "${ASM_PATH}"

  echo "Generated ${ASM_PATH}"
}

main "$@"

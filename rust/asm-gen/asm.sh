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
  if [ $# -eq 0 ]; then
    gen "${PROFILE}" "${TARGET}" "${BASE_DIR}"
  else
    local -r DEBUG_LEVEL="${1}"; shift
    gen "${PROFILE}" "${TARGET}" "${BASE_DIR}" \
      -C debuginfo="${DEBUG_LEVEL}" -Z asm-comments
  fi
}

gen() {
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

  local -r FILENAME="${TARGET}_${PROFILE}"
  local -r ASM_DIR="${BASE_DIR}/asm"
  if [ $# -eq 0 ]; then
    ASM_PATH="${ASM_DIR}/${FILENAME}.s"
  else
    ASM_PATH="${ASM_DIR}/debug/${FILENAME}.s"
  fi
  local -r FINGERPRINT_PATH="${ASM_DIR}/sha256/${FILENAME}.sha256"

  export DESCRIPTOR_DIR="${BASE_DIR}/descriptors"

  mkdir -p "${BASE_DIR}/asm/sha256"
  mkdir -p "${BASE_DIR}/asm/debug"
  mkdir -p "${DESCRIPTOR_DIR}"

  cargo clean -q -r -p "${TARGET}" || true
  cargo -q \
    rustc \
    --features "${PROFILE}" \
    --release \
    -q \
    -- \
    "$@" \
    -C target-cpu="${CPU}" \
    -C target-feature="${CPU_FEATURES}" \
    --emit asm="${ASM_PATH}"
  if [ "$(head -n 1 "${ASM_PATH}")" != "# @""generated" ]
  then
    sed -i '1s|^|# @''generated\n# https://github.com/facebookincubator/haberdashery/\n|' "${ASM_PATH}"
  fi
  sed -i '/\.file/d' "${ASM_PATH}"
  if [ $# -eq 0 ]; then
    cd "${BASE_DIR}"
    if sha256sum --quiet -c "${FINGERPRINT_PATH}" 1>/dev/null 2>/dev/null
    then
      echo "Unchanged $(sed '1d' "${FINGERPRINT_PATH}"| cut -d ' ' -f1) ${FILENAME}.s"
    else
      local -r GENERATED="generated"
      echo "# @${GENERATED}" > "${FINGERPRINT_PATH}"
      sha256sum "asm/${FILENAME}.s" >> "${FINGERPRINT_PATH}"
      echo "Generated $(sed '1d' "${FINGERPRINT_PATH}"| cut -d ' ' -f1) ${FILENAME}.s"
    fi
  else
    sed -i '/\.Ltmp/d' "${ASM_PATH}"
    sed -i 's/#.*core_arch\/src\//# core_arch::/g' "${ASM_PATH}"
    sed -i 's/#.*library\/core\/src\//# core::/g' "${ASM_PATH}"
    sed -i 's/#.*haberdashery\/rust\/asm-gen\/src\//# haberdashery::/g' "${ASM_PATH}"
    sed -i 's/\.loc.*#/#/g' "${ASM_PATH}"
    sed -i "/\.section\t\.debug_abbrev/,\$d" "${ASM_PATH}"
    sed -i "/\.section\t\.debug_loc/,\$d" "${ASM_PATH}"
    echo "Debug assembly generated asm/debug/${FILENAME}.s"
  fi
}

main "$@"

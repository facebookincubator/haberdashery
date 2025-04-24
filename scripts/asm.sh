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

polish_asm_debug() {
  local -r ASM_PATH="${1}"; shift
  sed -i '/^.Ltmp/d' "${ASM_PATH}"
  sed -i '/^# %bb/d' "${ASM_PATH}"
}

polish_asm() {
  local -r ASM_PATH="${1}"; shift
  if [ "$(head -n 1 "${ASM_PATH}")" != "# @""generated" ]; then
    sed -i '1s|^|# @''generated\n# https://github.com/facebookincubator/haberdashery/\n|' "${ASM_PATH}"
  fi
  sed -i '/\.file/d' "${ASM_PATH}"
}

maybe_update_hash() {
  local -r FILENAME=$1; shift
  local -r ASM_DIR="${PROJECT_DIR}/asm/"
  local -r FINGERPRINT_PATH="${ASM_DIR}/sha256/${FILENAME}.sha256"

  cd "${PROJECT_DIR}"
  if sha256sum --quiet -c "${FINGERPRINT_PATH}" 1>/dev/null 2>/dev/null
  then
    echo "Unchanged $(sed '1d' "${FINGERPRINT_PATH}"| cut -d ' ' -f1) ${FILENAME}.s"
  else
    local -r GENERATED="generated"
    echo "# @${GENERATED}" > "${FINGERPRINT_PATH}"
    sha256sum "asm/${FILENAME}.s" >> "${FINGERPRINT_PATH}"
    echo "Generated $(sed '1d' "${FINGERPRINT_PATH}"| cut -d ' ' -f1) ${FILENAME}.s"
  fi
}

gen_single() {
  local -r ALG=$1; shift
  local -r PROFILE=$1; shift
  local -r ASM_DIR="${PROJECT_DIR}/asm/"
  local -r FILENAME="${ALG}_${PROFILE}"
  local -r ASM_PATH="${ASM_DIR}/${FILENAME}.s"
  local -r CRATE="haberdashery-asm-gen"
  local -r TARGET="x86_64-unknown-linux-gnu"
  DEBUG_INFO=()
  if [ $# -ne 0 ]; then
    if [ "${1}" == "--debug" ]; then
      DEBUG_INFO=(-Z verbose-asm -C debuginfo=1)
    fi
  fi

  mkdir -p "${PROJECT_DIR}/asm"
  mkdir -p "${PROJECT_DIR}/asm/sha256"
  mkdir -p "${PROJECT_DIR}/descriptors"

  export DESCRIPTOR_DIR="${PROJECT_DIR}/descriptors"

  cd "${PROJECT_DIR}"/rust/asm-gen
  cargo clean -q -r -p "${CRATE}" \
    --target "${TARGET}" \
    --target-dir "${CARGO_TARGET_DIR}"/"${CRATE}"/"${PROFILE}"
  cargo rustc -q \
    --target "${TARGET}" \
    --target-dir "${CARGO_TARGET_DIR}"/"${CRATE}"/"${PROFILE}" \
    --features asm_gen,"${PROFILE}","${ALG}" \
    --config "${PROJECT_DIR}"/rust/config/"${PROFILE}".toml \
    --release \
    -- "${DEBUG_INFO[@]}" \
    --emit asm="${ASM_PATH}"
  polish_asm "${ASM_PATH}"
  if [ "${#DEBUG_INFO[@]}" -ne 0 ]; then
    polish_asm_debug "${ASM_PATH}"
  else
    maybe_update_hash "${FILENAME}"
  fi
}

gen_alg() {
  local -r ALG=$1; shift
  if [ $# -ne 0 ]; then
    gen_single "${ALG}" "$@"
  else
    gen_single "${ALG}" haswell "$@"
    gen_single "${ALG}" broadwell "$@"
    gen_single "${ALG}" skylake "$@"
    gen_single "${ALG}" skylakex "$@"
    gen_single "${ALG}" tigerlake "$@"
  fi

}

main() {
  if [ $# -ne 0 ]; then
    gen_alg "$@"
  else
    gen_alg aes128gcm "$@"
    gen_alg aes128gcm_streaming "$@"
    gen_alg aes192gcm "$@"
    gen_alg aes256gcm "$@"
    gen_alg aes256gcm_streaming "$@"
    gen_alg aes256gcmdndk "$@"
    gen_alg aes256gcmdndkv2 "$@"
    gen_alg aes256gcmdndkv2kc "$@"
    gen_alg aes256gcmsiv "$@"
    gen_alg sivmac "$@"
  fi
}

main "$@"

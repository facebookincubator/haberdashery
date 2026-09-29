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

DEFAULT_ARCH=$(rustup toolchain list -q|awk -F'-' 'NR==1{print $2}')
readonly DEFAULT_ARCH

CARGO_TARGET_DIR="${CARGO_TARGET_DIR:=${HOME}/cargo}"
readonly CARGO_TARGET_DIR

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
  sed -i 's|// UNCOMMENT ||g' "${ASM_PATH}"
}

maybe_update_hash() {
  local -r FILENAME=$1; shift
  local -r ARCH=$1; shift
  local -r ASM_DIR="${PROJECT_DIR}/asm/${ARCH}"
  local -r FINGERPRINT_PATH="${ASM_DIR}/sha256/${FILENAME}.sha256"

  cd "${PROJECT_DIR}"
  if sha256sum --quiet -c "${FINGERPRINT_PATH}" 1>/dev/null 2>/dev/null
  then
    echo "Unchanged $(sed '1d' "${FINGERPRINT_PATH}"| cut -d ' ' -f1) ${FILENAME}.s"
  else
    local -r GENERATED="generated"
    echo "# @${GENERATED}" > "${FINGERPRINT_PATH}"
    sha256sum "asm/${ARCH}/${FILENAME}.s" >> "${FINGERPRINT_PATH}"
    echo "Generated $(sed '1d' "${FINGERPRINT_PATH}"| cut -d ' ' -f1) ${FILENAME}.s"
  fi
}

gen_skylakex_aes128gcm() {
  local -r SOURCE_DIR="${PROJECT_DIR}/skylakex/aes128gcm"
  local -r FILENAME="aes128gcm_skylakex"

  "${SOURCE_DIR}/asm.sh" release
  mkdir -p "${PROJECT_DIR}/asm/x86_64/sha256"
  mkdir -p "${PROJECT_DIR}/descriptors/aead"
  cp "${SOURCE_DIR}/src/aes128gcm.s" \
    "${PROJECT_DIR}/asm/x86_64/${FILENAME}.s"
  cp "${SOURCE_DIR}/descriptor.txt" \
    "${PROJECT_DIR}/descriptors/aead/${FILENAME}.txt"
  maybe_update_hash "${FILENAME}" x86_64
}

gen_zen4_aes128gcm() {
  local -r SOURCE_DIR="${PROJECT_DIR}/zen4/aes128gcm"
  local -r FILENAME="aes128gcm_zen4"

  "${SOURCE_DIR}/asm.sh" release
  mkdir -p "${PROJECT_DIR}/asm/x86_64/sha256"
  mkdir -p "${PROJECT_DIR}/descriptors/aead"
  cp "${SOURCE_DIR}/src/aes128gcm.s" \
    "${PROJECT_DIR}/asm/x86_64/${FILENAME}.s"
  cp "${SOURCE_DIR}/descriptor.txt" \
    "${PROJECT_DIR}/descriptors/aead/${FILENAME}.txt"
  maybe_update_hash "${FILENAME}" x86_64
}

gen_sapphirerapids_aes128gcm() {
  local -r SOURCE_DIR="${PROJECT_DIR}/sapphirerapids/aes128gcm"
  local -r FILENAME="aes128gcm_sapphirerapids"

  "${SOURCE_DIR}/asm.sh" release
  mkdir -p "${PROJECT_DIR}/asm/x86_64/sha256"
  mkdir -p "${PROJECT_DIR}/descriptors/aead"
  cp "${SOURCE_DIR}/src/aes128gcm.s" \
    "${PROJECT_DIR}/asm/x86_64/${FILENAME}.s"
  cp "${SOURCE_DIR}/descriptor.txt" \
    "${PROJECT_DIR}/descriptors/aead/${FILENAME}.txt"
  maybe_update_hash "${FILENAME}" x86_64
}

gen_neoversev2_aes128gcm() {
  local -r SOURCE_DIR="${PROJECT_DIR}/neoversev2/aes128gcm"
  local -r FILENAME="aes128gcm_neoversev2"

  "${SOURCE_DIR}/asm.sh" release
  mkdir -p "${PROJECT_DIR}/asm/aarch64/sha256"
  mkdir -p "${PROJECT_DIR}/descriptors/aead"
  cp "${SOURCE_DIR}/src/aes128gcm.s" \
    "${PROJECT_DIR}/asm/aarch64/${FILENAME}.s"
  cp "${SOURCE_DIR}/descriptor.txt" \
    "${PROJECT_DIR}/descriptors/aead/${FILENAME}.txt"
  maybe_update_hash "${FILENAME}" aarch64
}

gen_single() {
  local -r ALG=$1; shift
  local -r PROFILE=$1; shift

  if [[ "${ALG}" == "aes128gcm" && "${PROFILE}" == "skylakex" ]]; then
    gen_skylakex_aes128gcm
    return
  fi

  if [[ "${ALG}" == "aes128gcm" && "${PROFILE}" == "zen4" ]]; then
    gen_zen4_aes128gcm
    return
  fi

  if [[ "${ALG}" == "aes128gcm" && "${PROFILE}" == "sapphirerapids" ]]; then
    gen_sapphirerapids_aes128gcm
    return
  fi

  if [[ "${ALG}" == "aes128gcm" && "${PROFILE}" == "neoversev2" ]]; then
    gen_neoversev2_aes128gcm
    return
  fi

  local -r ASM_GEN_DIR="${PROJECT_DIR}/rust/asm-gen"

  cd "${ASM_GEN_DIR}"
  local -r ARCH=$(\
      cargo rustc -Z unstable-options --print cfg \
        --config=../config/"${PROFILE}".toml \
        | awk -F'"' '/^target_arch/ {print $2}' \
  )

  local -r CRATE="haberdashery-asm-gen"
  local -r FILENAME="${ALG}_${PROFILE}"
  local -r ASM_DIR="${PROJECT_DIR}/asm/${ARCH}"
  local -r ASM_PATH="${ASM_DIR}/${FILENAME}.s"
  DEBUG_INFO=()
  if [ $# -ne 0 ]; then
    if [ "${1}" == "--debug" ]; then
      DEBUG_INFO=(-Z verbose-asm -C debuginfo=1)
    fi
  fi

  mkdir -p "${ASM_DIR}"
  mkdir -p "${ASM_DIR}/sha256"
  mkdir -p "${PROJECT_DIR}/descriptors"

  export DESCRIPTOR_DIR="${PROJECT_DIR}/descriptors"

  #cargo clean -q -r --target-dir "${CARGO_TARGET_DIR}"/"${CRATE}"/"${PROFILE}"
  cargo rustc -q -r \
    --target-dir "${CARGO_TARGET_DIR}"/"${CRATE}"/"${PROFILE}" \
    --no-default-features \
    --features asm_gen,"${PROFILE}","${ALG}" \
    --config "${PROJECT_DIR}"/rust/config/"${PROFILE}".toml \
    -- "${DEBUG_INFO[@]}" \
    --emit asm="${ASM_PATH}"
  polish_asm "${ASM_PATH}"
  if [ "${#DEBUG_INFO[@]}" -ne 0 ]; then
    polish_asm_debug "${ASM_PATH}"
  else
    maybe_update_hash "${FILENAME}" "${ARCH}"
  fi
}

gen_alg() {
  local -r ALG=$1; shift
  if [ $# -ne 0 ]; then
    gen_single "${ALG}" "$@"
  else
    gen_single "${ALG}" broadwell "$@"&
    gen_single "${ALG}" skylakex "$@"&
    gen_single "${ALG}" tigerlake "$@"&
    wait
  fi
}

main() {
  if [ $# -ne 0 ]; then
    gen_alg "$@"
  else
  case "${DEFAULT_ARCH}" in
    "x86_64")
      gen_alg aes128gcm "$@"
      gen_single aes128gcm zen4 "$@"
      gen_single aes128gcm sapphirerapids "$@"
      gen_alg aes128gcm_streaming "$@"
      gen_alg aes192gcm "$@"
      gen_alg aes256gcm "$@"
      gen_alg aes256gcm_streaming "$@"
      gen_alg aes256gcmdndk "$@"
      gen_alg aes256gcmdndkv2 "$@"
      gen_alg aes256gcmdndkv2kc "$@"
      gen_alg aes256gcmsiv "$@"
      gen_alg sivmac "$@"
      gen_single aes256gcmsiv sapphirerapids "$@"
      gen_single aes256gcmsiv zen4 "$@"
      ;;
    "aarch64")
      gen_single aes128gcm neoversev2
      gen_single aes256gcm neoversev2
      gen_single aes256gcmdndk neoversev2
      gen_single aes256gcmdndkv2 neoversev2
      gen_single aes256gcmdndkv2kc neoversev2
      gen_single aes256gcmsiv neoversev2
      gen_single sivmac neoversev2
      ;;
    *)
      echo "Unknown arch: ${DEFAULT_ARCH}"
      exit 1
      ;;
    esac
  fi
}

main "$@"

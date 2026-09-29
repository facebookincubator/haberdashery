#!/usr/bin/env bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

set -euo pipefail

# Usage: asm.sh [release|debug] [--features SPEC]
#   asm.sh          — produce src/aes128gcm.s and asm/aes128gcm_debug.s
#   asm.sh release  — produce only src/aes128gcm.s (plus symbols and descriptor)
#   asm.sh debug    — produce only asm/aes128gcm_debug.s (source-line annotations)
#   --features SPEC — extra asm-crate features for codegen (e.g. pure-intrinsics)
#
# This file is identical across the x86 <profile>/aes128gcm implementations;
# the profile is derived from its directory.

readonly IMPL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly PREFIX=haberdashery
readonly ALG=aes128gcm
readonly PROFILE="$(basename "$(dirname "$IMPL_DIR")")"
readonly PRIMITIVE=aead
readonly TARGET=x86_64-unknown-linux-gnu

readonly GENERATED=generated

usage() {
  echo "Usage: asm.sh [release|debug] [--features SPEC]" >&2
  exit 1
}

generated_header() {
  printf '# @%s\n' "$GENERATED"
  printf '# https://github.com/facebookincubator/haberdashery/\n'
}

build_asm() {
  cargo rustc --release --target "$TARGET" --target-dir "$TARGET_DIR" \
    --config config.toml \
    --features "asm${EXTRA_FEATURES:+,$EXTRA_FEATURES}" \
    --message-format json \
    -- --emit asm "$@" \
    | jq -r --arg target "${ALG}_${PROFILE}_asm" '
        select(
          .reason == "compiler-artifact"
          and .target.name == $target
        )
        | .filenames[]
        | select(endswith(".rmeta"))
        | sub("/lib"; "/")
        | sub("\\.rmeta$"; ".s")
      '
}

annotate() {
  awk '
    /^\t\.file\t[0-9]+/ {
        id = $2
        n = split($0, parts, "\"")
        path = parts[n - 1]
        if (path ~ /^library\//) { is_std[id] = 1; next }
        files[id] = path
        next
    }
    /^\t\.file\t"/ { next }
    /^\t\.loc\t/ {
        id = $2; line = $3
        if (id in files) printf "\t# %s:%s\n", files[id], line
        next
    }
    /^\t\.cfi_/        { next }
    /^\.Ltmp[0-9]*:/   { next }
    /^\.Lfunc_/        { next }
    /^\.Lsec_end/      { next }
    /^\t\.size\t/      { next }
    /^\t\.section\t.*debug/ { d = 1; next }
    /^\.L.*debug/           { d = 1; next }
    /^\.Linfo_/             { d = 1; next }
    d && /^\t\.section\t/ && !/debug/ { d = 0 }
    d && /^[a-zA-Z_].*:$/ && !/^\.L/ { d = 0 }
    d { next }
    { print }
  '
}

check_source() {
  if awk '
    index($0, "#[inline(always)]") {
      printf "%s:%d: %s\n", FILENAME, FNR, $0 > "/dev/stderr"
      found = 1
    }
    END { exit !found }
  ' src/*.rs; then
    echo 'error: #[inline(always)] is not needed; its use hides source annotations in debug assembly' >&2
    exit 1
  fi
  if awk '
    index($0, "#[cold]") {
      printf "%s:%d: %s\n", FILENAME, FNR, $0 > "/dev/stderr"
      found = 1
    }
    END { exit !found }
  ' src/*.rs; then
    echo 'error: #[cold] blocks inlining and emits callq in the generated assembly' >&2
    exit 1
  fi
}

metadata_value() {
  local -r object_path="$1"
  local -r symbol="${PREFIX^^}_${ALG^^}_${PROFILE^^}_$2"
  objcopy \
    --dump-section ".rodata.${symbol}=/dev/stdout" \
    "$object_path" /dev/null \
    | od -An -tu8 -N8 \
    | tr -d '[:space:]'
}

generate_descriptor() {
  local -r object_path="$1"
  local -r descriptor_path="../descriptor.txt"
  local arch

  arch=$(
    cargo rustc --quiet --release --target "$TARGET" --target-dir "$TARGET_DIR" \
      --config config.toml \
      --features asm \
      -- --print cfg \
      | awk -F= '$1 == "target_arch" {gsub(/"/, "", $2); print $2}'
  )
  {
    printf '# @%s\n' "$GENERATED"
    cat <<EOF
algorithm=${ALG}
arch=${arch}
key_len=$(metadata_value "$object_path" KEY_SIZE)
nonce_len=$(metadata_value "$object_path" NONCE_SIZE)
prefix=${PREFIX}
primitive=${PRIMITIVE}
profile=${PROFILE}
struct_alignment=$(metadata_value "$object_path" STRUCT_ALIGN)
struct_size=$(metadata_value "$object_path" STRUCT_SIZE)
tag_len=$(metadata_value "$object_path" TAG_SIZE)
EOF
  } > "$descriptor_path"
  echo "Wrote ${descriptor_path}"
}

release() {
  local -r object_path="${TARGET_DIR}/${ALG}.o"
  rm -f ../src/aes128gcm.s

  ASM=$(build_asm)
  if [[ -z "$ASM" || ! -f "$ASM" ]]; then
    echo "No .s found: $ASM" >&2
    exit 1
  fi

  {
    generated_header
    awk '$1 != ".file"' "$ASM"
  } > ../src/aes128gcm.s
  echo "Wrote aes128gcm.s ($(wc -l < ../src/aes128gcm.s) lines)"

  awk '/^[[:space:]]*callq([[:space:]]|$)/ { $1 = $1; print }' ../src/aes128gcm.s > callq.txt
  if [[ ! -s callq.txt ]]; then
    rm callq.txt
  fi

  if [[ "$(uname -m)" != "${TARGET%%-*}" ]]; then
    echo "Host is $(uname -m), not ${TARGET%%-*}: kept symbols.txt and descriptor.txt as they were" >&2
    return
  fi
  as ../src/aes128gcm.s -o "$object_path"
  nm -g --defined-only "$object_path" | awk '{print $3}' | LC_ALL=C sort -u > symbols.txt
  echo "Symbols:"
  cat symbols.txt
  generate_descriptor "$object_path"
}

debug() {
  rm -f aes128gcm_debug.s

  ASM=$(build_asm -C debuginfo=line-tables-only)
  if [[ -z "$ASM" || ! -f "$ASM" ]]; then
    echo "No .s found: $ASM" >&2
    exit 1
  fi

  {
    generated_header
    annotate < "$ASM"
  } > aes128gcm_debug.s
  echo "Wrote aes128gcm_debug.s ($(wc -l < aes128gcm_debug.s) lines)"
}

main() {
  cd "$IMPL_DIR/asm"
  export PATH="$HOME/.cargo/bin:$PATH"

  check_source

  MODE=""
  EXTRA_FEATURES=""
  while (($# > 0)); do
    case "$1" in
      release|debug) MODE="$1"; shift ;;
      --features)
        if (($# < 2)); then
          usage
        fi
        EXTRA_FEATURES="$2"
        shift 2
        ;;
      *) usage ;;
    esac
  done

  TARGET_DIR=$(mktemp -d)
  trap 'rm -rf "$TARGET_DIR"' EXIT

  case "$MODE" in
    release) release ;;
    debug)   debug ;;
    "")      release; debug ;;
  esac
}

main "$@"

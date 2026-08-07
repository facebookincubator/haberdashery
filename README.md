# Haberdashery: high-performance constant-time implementations for crypto algorithms

[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE-MIT)
[![License Apache](https://img.shields.io/badge/License-APACHE-yellow.svg)](LICENSE-APACHE)

## Introduction

Haberdashery is a collection of high-performance constant-time
implementations for various crypto algorithms. Haberdashery is intended to be
consumed by crypto library authors, domain experts, and researchers.
Haberdashery is not intended for use as a general-purpose crypto library
consumed by end users, but rather to be consumed indirectly via your
preferred crypto library.

## Quickstart
Test rust bindings: `scripts/cargo.sh bindings/rust_lib`

Test c89 bindings: `scripts/make.sh`

Run benchmarks (dry run): `cargo bench --manifest-path=bindings/rust_bench/Cargo.toml -- --filter=profile=skylakex --dry-run`

Run benchmarks: `cargo bench --manifest-path=bindings/rust_bench/Cargo.toml -- --filter=profile=skylakex`

Test asm-generation scripts `scripts/cargo.sh`

## Project layout
The project can be divided into three components, assembly files, code to
generate assembly files, and example bindings into the assembly files.

### The assembly
Assembly files are located in the `asm` directory. Each assembly file
corresponds to a specific algorithm, cpu microarchitecture, and calling
convention. The assembly is intended to be "freestanding", suitable for use
on bare metal. Implementations (currently) assume that the `memcpy` symbol is
available at runtime, but otherwise do not assume any particular OS or
runtime.

### Assembly generation
Algorithms are implemented in `rust/asm-gen`, written in rust. The rust
compiler is called with the `--emit=asm` flag to produce the assembly found
in `asm`. Careful use of the rust core library combined with excessive bounds
checking produces assembly that is free of symbols from the rust-runtime. The
implementations mostly rely on llvm's ability to properly optimize x86
intrinsics. Inline assembly is occasionally used in cases where llvm
de-optimizes otherwise carefully-interleaved code.

As part of assembly generation, implementation metadata is created by rust
proc macros which is used to auto-generate bindings. Binding metadata can be
found in `descriptors`.

The assembly can be (re)generated via the script `scripts/asm.sh`. Bindings
can be (re)generated with the script `scripts/bindings.sh`. Reproducible Nix
development shells for generation and testing are defined in `flake.nix` and
can be run with `scripts/nix.sh`. For example, `scripts/nix.sh assembly` runs
assembly generation with its pinned Rust toolchain and build dependencies.

### Example bindings
Although the algorithms are implemented in rust, the rust implementations are
not intended to be taken as a direct dependency. Rather, rust libraries will
consume the generated assembly via rust bindings like any other language.  Rust
"sys" bindings are located in `bindings/rust_sys` and can be tested with
`scripts/cargo.sh bindings/rust_sys --all-features` or via a direct call to
`cargo`. Rust trait-based bindings are in `bindings/rust_lib`. c89-themed
bindings are located in `bindings/c89` and can be tested with
`scripts/make.sh bindings/c89` or via a direct call to `make`. The same tests
can be run in the Nix environment with `scripts/nix.sh test_c89`.

### Testing
`test_vectors` contains binary test vectors in a bespoke format. Our
intention is that the binary format is sufficiently easy to reverse engineer
so that auto-generated bindings will include auto-generated zero-dependency
tests against these vectors. The format also supports efficient streaming
zero-copy deserialization from disk, allowing us to quickly test a large
number of test vectors during routine development.

The rust code that generates the assembly/bindings/etc can be tested with
`scripts/cargo.sh` or by manually invoking `cargo` on individual crates. Some
optimizations in `rust/asm-gen` are feature-gated and may not be tested
against by default. To test these features, an explicit call like
`scripts/cargo.sh asm-gen --features=skylakex` may be needed or the
corresponding call
`cargo test --manifest-path=rust/asm-gen/Cargo.toml --features=skylakex`.

### Benchmarks
Benchmarks are found in `benchmark_data`, both csv and markdown. Currently,
benchmark data is included for SkylakeX, Tiger Lake, Sapphire Rapids, Zen 4,
and Neoverse V2. SkylakeX is similar to Skylake but uses some AVX-512
extensions. In particular, we take advantage of `vpternlogq` and
`xmm16`-`xmm31` but do not use instructions wider than 128 bits.

## Algorithms and APIs
We support seven AEAD algorithms: AES-128-GCM, AES-192-GCM, AES-256-GCM,
AES-256-GCM-SIV, AES-256-GCM-DNDK, AES-256-GCM-DNDK-v2, and
AES-256-GCM-DNDK-v2-KC. We also support the SIVMAC MAC algorithm. All eight
algorithms are available through a contiguous API, where inputs and outputs
are represented by a pointer and length. AES-128-GCM and AES-256-GCM also
provide streaming APIs.

We refer to the collection of symbols/functions within a single assembly file
as an "implementation". Each implementation has an `is_supported` function
and an `init` function. Functions which are neither `is_supported` nor `init`
are referred to as "crypto operation functions".

The `is_supported` function MUST be called and MUST return true/non-zero
prior to a call to the `init` function.
If the `is_supported` function returns false/zero, the `init` function MUST
NOT be called. The result of `is_supported` MAY be cached for a given
implementation. The `is_supported` functions are per-implementation and
completely independent, `is_supported` must be called for each
implementation.

The `init` function takes as input a pointer to a struct and a buffer of key
bytes passed as separate point/length parameters. The `init` function MUST
be called and return true/non-zero prior to calling any crypto operation
functions within an implementation. If the `init` function returns false, the
crypto operation functions MUST NOT be called. The struct is considered
"inititalized" after the struct is passed and the `init` function returns
true. An initialized struct is trivially copyable. The key for an
initialized struct can be changed with an additional call to `init`. `init`
only needs to be called once for a given key, after which arbitrary
concurrent crypto operation functions may be called unless and until the key
is changed via another call to `init`. `init` MUST NOT be called concurrently
with crypto operation functions.

A strawman usage might have a constructor that takes a key as input,
statically cache the result of `is_supported` inside a constructor,
instantiate an object with a given key by calling `init`, and expose the
crypto operation functions as methods on the object.

### AEAD
#### Contiguous AEAD
The contiguous AEAD API has two crypto operation functions, `encrypt` and
`decrypt`. `encrypt` and `decrypt` take pointers to an initialized struct,
and buffers for the nonce, aad, tag, plaintext, and ciphertext. The plaintext
and ciphertext buffers MUST either be identical or entirely disjoint. i.e.
in-place encryption is supported. The remaining buffers, nonce, aad, and tag
may not intersect with any output buffers. If a call to `decrypt` returns
false, no guarantees are made with respect to the state of the plaintext
output buffer. In particular, we make the explicit design choice to not pay
the performance penalty of zeroing the plaintext output buffer.

### MAC
#### Contiguous MAC
The contiguous MAC API has two crypto operations functions, `sign` and
`verify`. `sign` will construct a tag for a given message. The `verify`
function will return true for a given (message, tag) pair if and only if the
pair was produced by the `sign` function.

## Algorithms and platforms
We produce assembly for the following micro-architectures, only some assembly
has been optimized for the target platform and algorithm.
 - BW = Broadwell
 - SLX = SkylakeX
 - TL = Tigerlake
 - SPR = Sapphire Rapids
 - Z4 = Zen 4
 - N2 = Neoverse V2

|primitive|algorithm              | BW | SLX | TL | SPR | Z4 | N2 |
|---------|-----------------------|:--:|:---:|:--:|:---:|:--:|:--:|
|AEAD     |aes128gcm              |&check;|&check;|&check;|&cross;|&cross;|&cross;|
|AEAD     |aes128gcm_streaming    |&check;|&check;|&check;|&cross;|&cross;|&cross;|
|AEAD     |aes192gcm              |&check;|&check;|&check;|&cross;|&cross;|&cross;|
|AEAD     |aes256gcm              |&check;|&check;|&check;|&cross;|&cross;|&check;|
|AEAD     |aes256gcm_streaming    |&check;|&check;|&check;|&cross;|&cross;|&cross;|
|AEAD     |aes256gcmdndk          |&check;|&check;|&check;|&cross;|&cross;|&check;|
|AEAD     |aes256gcmdndkv2        |&check;|&check;|&check;|&cross;|&cross;|&check;|
|AEAD     |aes256gcmdndkv2kc      |&check;|&check;|&check;|&cross;|&cross;|&check;|
|AEAD     |aes256gcmsiv           |&check;|&check;|&check;|&check;|&check;|&check;|
|MAC      |sivmac                 |&check;|&check;|&check;|&cross;|&cross;|&check;|

## License
Haberdashery is dual-licensed under either the MIT License or the Apache
License, Version 2.0, as found in the LICENSE-MIT and LICENSE-APACHE files.
You may select, at your option, one of the above-listed licenses.

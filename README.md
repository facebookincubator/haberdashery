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
Test rust bindings: `scripts/cargo.sh sys`

Test c89 bindings: `scripts/make.sh`

Run benchmarks (dry run): `cargo bench --manifest-path=rust/sys/benchmarks/Cargo.toml -- --filter=profile=skylakex --dry-run`

Run benchmarks: `cargo bench --manifest-path=rust/sys/benchmarks/Cargo.toml -- --filter=profile=skylakex`

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
found in `descriptor_yaml`.

The assembly can be (re)generated via the script `scripts/asm.sh`. Bindings
can be (re)generated with the script `scripts/bindings.sh`. Dockerized
versions of these scripts are available in `podman/assembly.Dockerfile` and
`podman/bindings.Dockerfile`. The script `scripts/podman.sh` demonstrates how
to call these containers. These containers are intended to demonstrate dev
and source dependencies, a typical developer will likely prefer to call the
corresponding scripts directly.

### Example bindings
Although the algorithms are implemented in rust, the rust implementations are
not intended to be taken as a direct dependency. Rather, rust libraries will
consume the generated assembly via rust bindings like any other language.
Rust bindings are located in `rust/sys` and can be tested with
`scripts/cargo.sh sys` or via a direct call to `cargo`. A dockerized example
of building and testing is in `podman/test_rust_sys.Dockerfile`. c89-themed
bindings are located in `c` and can be tested with `scripts/make.sh sys` or
via a direct call to `make`. A dockerized example of building and testing is
in `podman/test_c89.Dockerfile`.

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
corresponding call `cargo --features=skylakex` directly on the `asm-gen`
crate.

### Benchmarks
Benchmarks are found in `benchmark_data`, both csv and markdown. Currently,
only benchmarks for broadwell and skylakex are present. Skylakex is similar to
skylake but uses some avx512 extensions. In particular, we take advantage of
`vpternlogq` and `xmm16`-`xmm31` but do not use instructions wider than
128-bit. Haswell, and tigerlake assembly exists, but has not been as carefully
optimized and we do not include benchmarks.

## Algorithms and APIs
We support three AEAD algorithms, aes256gcm, aes256gcmsiv, aes256gcmdndk, and
a MAC algorithm, sivmac. All four algorithms are available in a contiguous
API, where inputs and outputs are a pointer and length. In the future, we
intend to offer scatter/gather APIs for all algorithms and streaming APIs for
some algorithms.

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
 - HW = Haswell
 - BW = Broadwell
 - SL = Skylake
 - SLX = SkylakeX
 - TL = Tigerlake

|primitive|algorithm    | HW | BW | SL | SLX | TL |
|---------|-------------|:--:|:--:|:--:|:---:|:--:|
|AEAD     |aes256gcm    |&cross;|&check;|&cross;|&check;|&cross;|
|AEAD     |aes256gcmsiv |&cross;|&check;|&cross;|&check;|&cross;|
|AEAD     |aes256gcmdndk|&cross;|&check;|&cross;|&check;|&cross;|
|MAC      |sivmac       |&cross;|&check;|&cross;|&check;|&cross;|

## License
Haberdashery is dual-licensed under either the MIT License or the Apache
License, Version 2.0, as found in the LICENSE-MIT and LICENSE-APACHE files.
You may select, at your option, one of the above-listed licenses.

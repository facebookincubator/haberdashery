# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

{
  description = "Haberdashery development environments";

  inputs.nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";

  outputs =
    { nixpkgs, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      devShells = forAllSystems (
        system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };
          commonPackages = with pkgs; [
            bash
            coreutils
            gawk
            gcc
            gnumake
            gnused
          ];
          rustPackages = commonPackages ++ [ pkgs.rustup ];
          opensslPackages = with pkgs; [
            openssl
            pkg-config
          ];
          rustShell = pkgs.mkShell {
            packages = rustPackages;
          };
          rustOpenSslShell = pkgs.mkShell {
            packages = rustPackages ++ opensslPackages;
          };
          cShell = pkgs.mkShell {
            packages = commonPackages;
          };
          cOpenSslShell = pkgs.mkShell {
            packages = commonPackages ++ opensslPackages;
          };
        in
        {
          default = rustOpenSslShell;
          assembly = rustShell;
          bindings = rustOpenSslShell;
          test_c89 = cShell;
          test_openssl_evp = cOpenSslShell;
          test_rust = rustShell;
        }
      );
    };
}

// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use itertools::Itertools;

use crate::Descriptor;
use crate::Field;
use crate::Type;

impl<const N: usize> Descriptor<N> {
    pub fn cpp20_header(&self) -> String {
        let fields = self.fields.iter().map(Field::cpp20_struct).join("\n  ");
        format!(
            r#"#pragma once

#include <cstdint>
#include <optional>
#include <span>
#include <vector>

struct {name} {{
  {fields}

  [[nodiscard]] bool Deserialize(std::span<const uint8_t>* data) noexcept;
}};
"#,
            name = self.name
        )
    }

    pub fn cpp20_impl(&self) -> String {
        let name = self.name;
        // deserialize
        let deserialize_steps = self
            .fields
            .iter()
            .map(Field::cpp20_deserialize_step)
            .join("\n  ");
        let deserialize_fn = format!(
            r#"bool {name}::Deserialize(std::span<const uint8_t>* data) noexcept {{
  uint32_t len = 0;
  std::span<const uint8_t> d = *data;
  {deserialize_steps}
  *data = d;
  return true;
}}"#,
            name = self.name
        );

        format!(
            r#"#include "{name}.h"

{deserialize_fn}
"#
        )
        .to_string()
    }
}

impl Field {
    fn cpp20_struct(&self) -> String {
        let name = self.name;
        let ty = match self.ty {
            Type::String => "std::string_view",
            Type::Bytes => "std::span<const uint8_t>",
            Type::U32 => "uint32_t",
        };
        format!("{ty} {name}_;")
    }
    fn cpp20_deserialize_step(&self) -> String {
        match self.ty {
            Type::String => {
                r#"if (d.size() < sizeof(uint32_t)) {
      return false;
  }
  len = d[0] ^ d[1] << 8 ^ d[2] << 16 ^ d[3] << 24;
  d = d.last(d.size() - sizeof(uint32_t));
  if (d.size() < len) {
      return false;
  }
  {name}_ = std::string_view(reinterpret_cast<const char*>(d.data()), len);
  d = d.last(d.size() - len);"#
            }
            Type::Bytes => {
                r#"if (d.size() < sizeof(uint32_t)) {
      return false;
  }
  len = d[0] ^ d[1] << 8 ^ d[2] << 16 ^ d[3] << 24;
  d = d.last(d.size() - sizeof(uint32_t));
  if (d.size() < len) {
      return false;
  }
  {name}_ = d.first(len);
  d = d.last(d.size() - len);"#
            }
            Type::U32 => {
                r#"if (d.size() < sizeof(uint32_t)) {
      return false;
  }
  {name}_ = d[0] ^ d[1] << 8 ^ d[2] << 16 ^ d[3] << 24;
  d = d.last(d.size() - sizeof(uint32_t));"#
            }
        }
        .replace("{name}", self.name)
    }
}

#[cfg(test)]
mod tests {
    use crate::*;

    #[test]
    fn descriptor() {
        let descriptor = Descriptor {
            name: "CozyTestStruct",
            fields: [
                Field {
                    name: "bytes",
                    ty: Type::Bytes,
                },
                Field {
                    name: "string",
                    ty: Type::String,
                },
                Field {
                    name: "uint32",
                    ty: Type::U32,
                },
            ],
        };
        pretty_assertions::assert_eq!(
            descriptor.cpp20_header(),
            r#"#pragma once

#include <cstdint>
#include <optional>
#include <span>
#include <vector>

struct CozyTestStruct {
  std::span<const uint8_t> bytes_;
  std::string_view string_;
  uint32_t uint32_;

  [[nodiscard]] bool Deserialize(std::span<const uint8_t>* data) noexcept;
};
"#
        );
        pretty_assertions::assert_eq!(
            descriptor.cpp20_impl(),
            r#"#include "CozyTestStruct.h"

bool CozyTestStruct::Deserialize(std::span<const uint8_t>* data) noexcept {
  uint32_t len = 0;
  std::span<const uint8_t> d = *data;
  if (d.size() < sizeof(uint32_t)) {
      return false;
  }
  len = d[0] ^ d[1] << 8 ^ d[2] << 16 ^ d[3] << 24;
  d = d.last(d.size() - sizeof(uint32_t));
  if (d.size() < len) {
      return false;
  }
  bytes_ = d.first(len);
  d = d.last(d.size() - len);
  if (d.size() < sizeof(uint32_t)) {
      return false;
  }
  len = d[0] ^ d[1] << 8 ^ d[2] << 16 ^ d[3] << 24;
  d = d.last(d.size() - sizeof(uint32_t));
  if (d.size() < len) {
      return false;
  }
  string_ = std::string_view(reinterpret_cast<const char*>(d.data()), len);
  d = d.last(d.size() - len);
  if (d.size() < sizeof(uint32_t)) {
      return false;
  }
  uint32_ = d[0] ^ d[1] << 8 ^ d[2] << 16 ^ d[3] << 24;
  d = d.last(d.size() - sizeof(uint32_t));
  *data = d;
  return true;
}
"#,
        );
    }
}

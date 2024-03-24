// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use core::time::Duration as CoreDuration;

pub trait DurationConvert {
    fn secs(self) -> CoreDuration;
    fn ms(self) -> CoreDuration;
}
impl DurationConvert for u64 {
    fn secs(self) -> CoreDuration {
        CoreDuration::from_secs(self)
    }
    fn ms(self) -> CoreDuration {
        CoreDuration::from_millis(self)
    }
}

#[derive(Debug, PartialEq)]
pub enum DurationParseError {
    UnitsError,
    IntError,
}
#[derive(Debug)]
pub struct Duration(CoreDuration);
impl TryFrom<&str> for Duration {
    type Error = DurationParseError;
    fn try_from(s: &str) -> Result<Self, Self::Error> {
        if let Some(s) = s.strip_suffix("ms") {
            let s = s.parse::<u64>().map_err(|_| DurationParseError::IntError)?;
            Ok(CoreDuration::from_millis(s).into())
        } else if let Some(s) = s.strip_suffix('s') {
            let s = s.parse::<u64>().map_err(|_| DurationParseError::IntError)?;
            Ok(CoreDuration::from_secs(s).into())
        } else {
            Err(DurationParseError::UnitsError)
        }
    }
}
impl TryFrom<&String> for Duration {
    type Error = DurationParseError;
    fn try_from(s: &String) -> Result<Duration, Self::Error> {
        Self::try_from(s.as_str())
    }
}
impl From<Duration> for CoreDuration {
    fn from(duration: Duration) -> CoreDuration {
        duration.0
    }
}
impl From<CoreDuration> for Duration {
    fn from(duration: CoreDuration) -> Duration {
        Self(duration)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    trait To: Sized {
        fn to<T: From<Self>>(self) -> T {
            self.into()
        }
    }
    impl To for Duration {}

    #[test]
    fn parse() {
        assert_eq!(
            Duration::try_from("42s").unwrap().to::<CoreDuration>(),
            CoreDuration::from_secs(42)
        );
        assert_eq!(
            Duration::try_from("42ms").unwrap().to::<CoreDuration>(),
            CoreDuration::from_millis(42)
        );
        assert_eq!(
            Duration::try_from("banana").unwrap_err(),
            DurationParseError::UnitsError
        );
        assert_eq!(
            Duration::try_from("thirty s").unwrap_err(),
            DurationParseError::IntError
        );
    }
}

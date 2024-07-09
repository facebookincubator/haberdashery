use std::process::Command;

pub fn bin_name(file: &str) -> &str {
    let file_parts = file.split(std::path::MAIN_SEPARATOR);
    let file_name = file_parts.last().unwrap();
    file_name.strip_suffix(".rs").unwrap()
}

#[track_caller]
pub fn command(file: &str) -> Command {
    use assert_cmd::prelude::*;
    Command::cargo_bin(bin_name(file)).unwrap()
}

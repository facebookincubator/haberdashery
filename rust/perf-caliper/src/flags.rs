use core::time::Duration;

sflags::define! {
    --runtime: String = "100ms";
    --min_iters: u64 = 100;
    --dry_run: bool = false;
    --bench: bool = false;
}

pub fn runtime() -> Duration {
    units::Duration::try_from(&*RUNTIME).unwrap().into()
}

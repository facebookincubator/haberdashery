// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use std::thread;
use std::thread::JoinHandle;
use std::thread::Result;

use nix::sched::sched_setaffinity;
use nix::sched::CpuSet;
use nix::unistd::Pid;
use units::duration::*;

pub struct ThreadPool<T> {
    functions: Vec<Box<dyn FnOnce() -> T + Send + 'static>>,
    handles: Vec<Option<JoinHandle<T>>>,
    results: Vec<T>,
}
impl<T: Send + 'static> Default for ThreadPool<T> {
    fn default() -> Self {
        Self::new(std::thread::available_parallelism().unwrap().get() / 4)
    }
}
impl<T: Send + 'static> ThreadPool<T> {
    pub fn new(limit: usize) -> Self {
        let mut handles = Vec::with_capacity(limit);
        handles.resize_with(limit, || None);
        Self {
            functions: Vec::default(),
            handles,
            results: Vec::default(),
        }
    }
    fn next_index(&mut self) -> Result<usize> {
        loop {
            for i in 0..self.handles.len() {
                if let Some(handle) = self.handles[i].take() {
                    if !handle.is_finished() {
                        self.handles[i] = Some(handle);
                        continue;
                    }
                    self.results.push(handle.join()?);
                }
                return Ok(i);
            }
            thread::park_timeout(100.ms());
        }
    }
    pub fn add(&mut self, f: impl FnOnce() -> T + Send + 'static) {
        self.functions.push(Box::new(f));
    }
    fn exec(&mut self, f: impl FnOnce() -> T + Send + 'static) -> Result<()> {
        let i = self.next_index()?;
        let parent_thread = thread::current();
        self.handles[i] = Some(thread::spawn(move || {
            let mut cpu_set = CpuSet::new();
            cpu_set.set(i).unwrap();
            sched_setaffinity(Pid::this(), &cpu_set).unwrap();
            let result = f();
            parent_thread.unpark();
            result
        }));
        thread::yield_now();
        Ok(())
    }
    pub fn join(&mut self) -> Result<Vec<T>> {
        if self.functions.is_empty() {
            return Ok(vec![]);
        }
        let total_jobs = self.functions.len();
        println!("Benchmarking {total_jobs} jobs");
        let start = std::time::Instant::now();
        while let Some(f) = self.functions.pop() {
            self.exec(f)?;
            if !self.results.is_empty() {
                println!(
                    "progress: {:>3}/{total_jobs} {elapsed:.3} seconds",
                    self.results.len(),
                    elapsed = (start.elapsed().as_millis() as f64 / 1000.0)
                );
            }
        }
        let mut handles = Vec::with_capacity(self.handles.len());
        handles.resize_with(self.handles.len(), || None);
        core::mem::swap(&mut self.handles, &mut handles);
        let mut handles: Vec<JoinHandle<T>> = handles.into_iter().flatten().collect();

        while !handles.is_empty() {
            let len = handles.len();
            handles = handles
                .into_iter()
                .filter_map(|handle| {
                    if handle.is_finished() {
                        self.results.push(handle.join().ok()?);
                        None
                    } else {
                        Some(handle)
                    }
                })
                .collect();
            if len != handles.len() {
                println!(
                    "progress: {:>3}/{total_jobs} {elapsed:.3} seconds",
                    self.results.len(),
                    elapsed = (start.elapsed().as_millis() as f64 / 1000.0)
                );
            }
            if !handles.is_empty() {
                thread::park_timeout(100.ms());
            }
        }
        let mut results = vec![];
        core::mem::swap(&mut self.results, &mut results);
        Ok(results)
    }
}

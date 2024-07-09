use std::thread::sleep;
use std::time::{Duration, Instant};

fn main() {
    let now = Instant::now();

    // we sleep for 2 seconds
    sleep(Duration::new(2, 0));
    // it prints '2'
    println!("{}", now.elapsed().as_secs());
}

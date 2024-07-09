use std::time::Duration;

fn main() {
    let start = minstant::Instant::now();

    std::thread::sleep(Duration::from_secs(2));
    println!("Elapsed time: {:?}", start.elapsed().as_secs());
}

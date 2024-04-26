use anyhow::anyhow;

pub fn main() {
    println!("Error: {:?}", anyhow!("An error message"));
}

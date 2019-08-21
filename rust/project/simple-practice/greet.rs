use std::env;

pub fn main() {
    let args: Vec<String> = env::args().collect();

    println!("{:?}", args);

    if args.len() < 2 {
        std::process::exit(1)
    }
    println!("Greet {}!", args[1]);
}

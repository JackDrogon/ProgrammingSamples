use std::env;
use std::fs::File;
use std::io::prelude::*;

pub fn main() -> std::io::Result<()> {
    let args: Vec<String> = env::args().collect();
    println!("{:?}", args);

    if args.len() < 2 {
        std::process::exit(1)
    }

    /// read from src file
    let src_filename = &args[1];
    let mut src_file = File::open(src_filename)?;
    let mut contents = String::new();
    src_file.read_to_string(&mut contents)?;
    // print!("{}", contents);

    /// write to dest file
    let mut dest_filename: String;
    if args.len() < 3 {
        dest_filename = String::from(src_filename) + &String::from(".bak");
    } else {
        dest_filename = args[2]
    }
    let mut dest_file = File::create(dest_filename)?;
    dest_file.write_all(contents.as_bytes())?;
    /// fs::write(dest_filename, dest_filename)
    // fs::copy("foo.txt", "bar.txt")?;
    Ok(())
}

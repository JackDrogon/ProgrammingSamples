use clap::{App, Arg};
use std::fs;
use std::io::{self, Read, Write};

fn main() {
    let matches = App::new("rust_file_copy")
        .version("1.0")
        .author("Your Name <your.email@example.com>")
        .about("Simple CLI program to copy files")
        .arg(
            Arg::with_name("input")
                .help("The input file to copy")
                .required(true)
                .index(1),
        )
        .arg(
            Arg::with_name("output")
                .help("The output file")
                .required(true)
                .index(2),
        )
        .get_matches();

    let input_file = matches.value_of("input").unwrap();
    let output_file = matches.value_of("output").unwrap();

    if let Err(e) = copy(input_file, output_file) {
        eprintln!("Error: {}", e);
    }
}

fn copy(input_file: &str, output_file: &str) -> io::Result<()> {
    let mut input = fs::File::open(input_file)?;
    let mut output = fs::File::create(output_file)?;

    let mut buffer = [0; 4096];
    loop {
        let bytes_read = input.read(&mut buffer)?;
        if bytes_read == 0 {
            break;
        }
        output.write_all(&buffer[..bytes_read])?;
    }

    Ok(())
}

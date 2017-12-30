extern crate time;
extern crate regex;

use regex::Regex;

fn main() {
    println!("Hello, world!");
    println!("time: {:?}", time::now());

    let re = Regex::new(r"^\d{4}-\d{2}-\d{2}$").unwrap();
    println!("Did our date match? {}", re.is_match("2014-01-01"));
}

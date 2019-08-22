pub fn main() {
    for (i, j) in (5..10).enumerate() {
        println!("i = {} and j = {}", i, j);
    }

    let lines = "hello\nworld".lines();
    for (linenumber, line) in lines.enumerate() {
        println!("{}: {}", linenumber, line);
    }
}

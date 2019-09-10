fn println() {
    // In general, the `{}` will be automatically replaced with any
    // arguments. These will be stringified.
    println!("{} days", 31); // 31 days

    // Without a suffix, 31 becomes an i32. You can change what type 31 is
    // by providing a suffix.

    // There are various optional patterns this works with. Positional
    // arguments can be used.
    // Alice, this is Bob. Bob, this is Alice
    println!("{0}, this is {1}. {1}, this is {0}", "Alice", "Bob");

    // As can named arguments.
    // the quick brown fox jumps over the lazy dog
    println!(
        "{subject} {verb} {object}",
        object = "the lazy dog",
        subject = "the quick brown fox",
        verb = "jumps over"
    );

    // Special formatting can be specified after a `:`.
    // 1 of 10 people know binary, the other half doesn't
    // bin 2 -> 10
    println!(
        "{} of {:b} people know binary, the other half doesn't",
        1, 2
    );

    // You can right-align text with a specified width. This will output
    // "     1". 5 white spaces and a "1".
    //     1
    println!("{number:>width$}", number = 1, width = 6);

    // You can pad numbers with extra zeroes. This will output "000001".
    // 000001
    println!("{number:>0width$}", number = 1, width = 6);

    // Rust even checks to make sure the correct number of arguments are
    // used.
    // My name is Bond, James Bond
    println!("My name is {0}, {1} {0}", "Bond", "James");

    // Create a structure named `Structure` which contains an `i32`.
    #[allow(dead_code)]
    struct Structure(i32);

    // However, custom types such as this structure require more complicated
    // handling. This will not work.
    // FIXME ^ Comment out this line. by debug trait
    // println!("This struct `{}` won't print...", Structure(3));

    let pi = 3.141592;
    // 3.14
    println!("{:.2}", pi);
}

fn main() {
    println();
}

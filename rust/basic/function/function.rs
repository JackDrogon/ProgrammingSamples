fn print_number(x: i32) {
    println!("x is: {}", x);
}

fn add_one(x: i32) -> i32 {
    return x + 1;
}

fn main() {
    print_number(20);
    print_number(add_one(20));
}

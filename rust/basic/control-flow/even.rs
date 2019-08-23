fn even(max: i32) -> i32 {
    let mut count = 0;
    for n in 0..max {
        if n % 2 == 0 {
            count += 1;
            println!("{}", n);
        }
    }
    return count;
}

pub fn main() {
    let max = 19;
    let count = even(max);
    println!("From 0 to {} has {} even number.", max, count);
}

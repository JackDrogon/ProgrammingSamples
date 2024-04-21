pub fn main() {
    let x = 1_i32;
    fn add_one(x: i32) -> i32 {
        x + 1
    }
    let y = add_one(x);
    println!("result: {}", y);
}

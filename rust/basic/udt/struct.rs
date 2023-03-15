#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
}

/// 匿名只有一个字段的结构体
/// 感觉这样写还不如golang呢
struct Structure(i32);

fn main() {
    let point = Point { x: 0, y: 0 }; // point: Point

    println!("The point is at ({}, {})", point.x, point.y);
    println!("Point is {:?}", point); // {:?} need Debug trait
    dbg!(std::mem::size_of::<Point>());
    dbg!(std::mem::size_of::<Structure>());
}

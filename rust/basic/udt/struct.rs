#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let point = Point { x: 0, y: 0 }; // point: Point

    println!("The point is at ({}, {})", point.x, point.y);
    println!("Point is {:?}", point); // {:?} need Debug trait
}

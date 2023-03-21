pub fn main() {
    let x = 5;

    match x {
        1 => println!("one"),
        2 => println!("two"),
        3 => println!("three"),
        4 => println!("four"),
        5 => println!("five"),
        _ => println!("something else"),
    }

    // NOTE: multi by `|`
    let x = 1;

    match x {
        1 | 2 => println!("one or two"),
        3 => println!("three"),
        _ => println!("anything"),
    }

    // NOTE: range `...`
    // 范围通常在整数和字符的情况下使用：
    match x {
        1...5 => println!("one through five"),
        _ => println!("anything"),
    }

    // NOTE: binding `@`
    match x {
        e @ 1...5 => println!("got a range element {}", e),
        _ => println!("anything"),
    }

    // 如果你使用 @ 和 | 时，你需要确保在模式的每个部分都已经绑定好名称
    match x {
        e @ 1...5 | e @ 8...10 => println!("got a range element {}", e),
        _ => println!("anything"),
    }

    // 忽略变量
    // 如果你要匹配一个包含变量的枚举，你可以使用 .. 来忽略变量的值和类型：
    enum OptionalInt {
        Value(i32),
        Missing,
    }

    let x = OptionalInt::Value(5);

    match x {
        OptionalInt::Value(..) => println!("Got an int!"),
        OptionalInt::Missing => println!("No such luck."),
    }

    // 守卫
    match x {
        OptionalInt::Value(i) if i > 5 => println!("Got an int bigger than five!"),
        OptionalInt::Value(..) => println!("Got an int!"),
        OptionalInt::Missing => println!("No such luck."),
    }

    // ref 和 ref mut
    // 如果你想要获得一个引用，可以使用 ref 关键字：

    let x = 5;

    match x {
        ref r => println!("Got a reference to {}", r),
    }
}

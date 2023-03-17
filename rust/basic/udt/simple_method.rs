#![allow(non_snake_case)]

struct Person {
    id: u64,
    name: String,
}

impl Person {
    fn Print(self: &Self) {
        println!("id: {}, name: {}", self.id, self.name);
    }
}

pub fn main() {
    let alice = Person {
        id: 0,
        name: "alice".to_string(),
    };

    alice.Print();
}

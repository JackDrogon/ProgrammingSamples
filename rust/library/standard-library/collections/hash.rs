use std::collections::hash_map::DefaultHasher;
use std::hash::{Hash, Hasher};

#[derive(Hash)]
struct Person {
    id: u32,
    name: String,
    phone: u64,
}

fn calc_hash<T: Hash>(t: &T) -> u64 {
    let mut hasher = DefaultHasher::new();
    t.hash(&mut hasher);
    hasher.finish()
}

pub fn main() {
    let alice = Person {
        id: 0,
        name: "alice".to_string(),
        phone: 555_666_7777,
    };

    let bob = Person {
        id: 0,
        name: "bob".to_string(),
        phone: 555_666_7777,
    };

    assert!(calc_hash(&alice) != calc_hash(&bob));
}

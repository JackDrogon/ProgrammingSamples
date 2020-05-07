#![feature(format_args_capture)]
extern crate lru;

use lru::LruCache;

pub fn main() {
    let mut cache = LruCache::new(5);
    cache.put("a", 1);
    cache.put("b", 2);
    cache.put("c", 3);

    for (k, v) in cache.iter() {
        println!("key: {k}, value: {v}")
    }
}

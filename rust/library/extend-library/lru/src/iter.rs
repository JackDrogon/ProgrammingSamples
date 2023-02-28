extern crate lru;

use lru::LruCache;
use std::num::NonZeroUsize;

pub fn main() {
    let mut cache = LruCache::new(NonZeroUsize::new(5).unwrap());
    cache.put("a", 1);
    cache.put("b", 2);
    cache.put("c", 3);

    for (k, v) in cache.iter() {
        println!("key: {k}, value: {v}")
    }
}

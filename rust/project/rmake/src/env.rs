#![allow(unused)]

use std::collections::HashMap;
use std::rc::Rc;

#[derive(Debug)]
pub(crate) struct Env {
    table: HashMap<String, Rc<Value>>,
    parent: Option<Rc<Env>>,
}

pub(crate) impl Env {
    fn new() -> Self {
        Env {
            table: HashMap::new(),
            parent: None,
        }
    }

    fn include(&self, key: &String) -> bool {
        self.table.contains_key(key)
            || match &self.parent {
                Some(parent) => parent.include(key),
                None => false,
            }
    }

    fn fetch(&self, key: &String, default_value: Rc<Value>) -> Rc<Value> {
        if self.include(key) {
            self.get(key)
        } else {
            default_value
        }
    }

    fn delete(&mut self, key: &String) {
        self.table.remove(key);
        match &mut self.parent {
            Some(parent) => parent.delete(key),
            None => {}
        }
    }

    fn get(&self, key: &String) -> Rc<Value> {
        self.table
            .get(key)
            .unwrap_or_else(|| self.parent.as_ref().unwrap().get(key))
            .clone()
    }

    fn set(&mut self, key: String, value: Rc<Value>) {
        if self.table.contains_key(&key) {
            self.table.insert(key.clone(), value);
        } else if self.parent.as_ref().unwrap().include(&key) {
            self.parent.as_mut().unwrap().set(key.clone(), value);
        } else {
            self.table.insert(key.clone(), value);
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::value::Value;

    #[test]
    fn test_new_env() {
        let env = Env::new();
        assert!(env.table.is_empty());
        assert!(env.parent.is_none());
    }

    #[test]
    fn test_include() {
        let mut env = Env::new();
        env.set("foo".to_string(), Rc::new(Value::Number(42.0)));
        assert!(env.include(&"foo".to_string()));
        assert!(!env.include(&"bar".to_string()));
    }

    #[test]
    fn test_fetch() {
        let mut env = Env::new();
        env.set("foo".to_string(), Rc::new(Value::Number(42.0)));
        let default_value = Rc::new(Value::Number(0.0));
        assert_eq!(
            *env.fetch(&"foo".to_string(), default_value.clone()),
            Value::Number(42.0)
        );
        assert_eq!(
            *env.fetch(&"bar".to_string(), default_value.clone()),
            Value::Number(0.0)
        );
    }

    #[test]
    fn test_delete() {
        let mut env = Env::new();
        env.set("foo".to_string(), Rc::new(Value::Number(42.0)));
        env.delete(&"foo".to_string());
        assert!(!env.include(&"foo".to_string()));
    }

    #[test]
    fn test_set() {
        let mut env = Env::new();
        env.set("foo".to_string(), Rc::new(Value::Number(42.0)));
        env.set("bar".to_string(), Rc::new(Value::Number(43.0)));
        assert_eq!(*env.get(&"foo".to_string()), Value::Number(42.0));
        assert_eq!(*env.get(&"bar".to_string()), Value::Number(43.0));
    }
}

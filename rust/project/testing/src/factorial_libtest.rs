pub fn factorial(n: i64) -> i64 {
    let mut result = 1;
    for i in 1..=n {
        result *= i;
    }
    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn factorial_negative() {
        assert_eq!(factorial(-1), 1);
        assert_eq!(factorial(-5), 1);
    }
}

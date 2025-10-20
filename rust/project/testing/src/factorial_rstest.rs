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
    use rstest::*;

    #[rstest]
    #[case(-1, 1)]
    #[case(-5, 1)]
    fn factorial_negative(#[case] n: i64, #[case] expected: i64) {
        assert_eq!(factorial(n), expected);
    }
}

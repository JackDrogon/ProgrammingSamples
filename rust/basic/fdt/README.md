## Scalar Types
- signed integers: i8, i16, i32, i64, i128 and isize (pointer size)
- unsigned integers: u8, u16, u32, u64, u128 and usize (pointer size)
- floating point: f32, f64
-  char Unicode scalar values like 'a', 'α' and '∞' (4 bytes each)
-  bool either true or false
-  and the unit type (), whose only possible value is an empty tuple: ()
-  Despite the value of a unit type being a tuple, it is not considered a compound type because it does not contain multiple values.

## Compound Types
- arrays like [1, 2, 3]
- tuples like (1, true)

### Tuple
To create one element tuples, the comma is required to tell them apart from a literal surrounded by parentheses
`(5u32,))`

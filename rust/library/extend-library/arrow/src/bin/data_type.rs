use arrow_array::{Array, Int32Array};
use arrow_schema::DataType;

fn main() {
    let array = Int32Array::from(vec![1, 2, 3, 4, 5]);

    assert_eq!(*array.data_type(), DataType::Int32);
}

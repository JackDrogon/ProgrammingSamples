use arrow_array::{Int32Array, RecordBatch};
use arrow_schema::{DataType, Field, Schema};
use std::sync::Arc;

fn main() {
    let id_array = Int32Array::from(vec![1, 2, 3, 4, 5]);
    let schema = Schema::new(vec![Field::new("id", DataType::Int32, false)]);

    let batch = RecordBatch::try_new(Arc::new(schema), vec![Arc::new(id_array)]).unwrap();
    println!("{:?}", batch)
}

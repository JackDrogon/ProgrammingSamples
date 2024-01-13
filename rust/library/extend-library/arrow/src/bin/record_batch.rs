use arrow_array::{Array, Int32Array, RecordBatch};
use arrow_schema::{Field, Schema};
use std::sync::Arc;

fn main() {
    let id_array = Int32Array::from(vec![1, 2, 3, 4, 5]);
    let schema = Schema::new(vec![Field::new("id", id_array.data_type().clone(), false)]);

    let batch = RecordBatch::try_new(Arc::new(schema), vec![Arc::new(id_array)]).unwrap();
    println!("{:?}", batch);

    assert_eq!(batch.num_rows(), 5);
}

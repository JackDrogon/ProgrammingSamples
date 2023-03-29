fn main() -> std::io::Result<()> {
    use std::fs;

    let metadata = fs::metadata("foo.txt")?;

    println!("{:?}", metadata.file_type());
    Ok(())
}

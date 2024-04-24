use anyhow::{Context, Result};

fn main() -> Result<()> {
    let path = "instructions.txt";
    let content =
        std::fs::read(path).with_context(|| format!("Failed to read instrs from {}", path))?;
    println!("Content: {:?}", content);

    Ok(())
}

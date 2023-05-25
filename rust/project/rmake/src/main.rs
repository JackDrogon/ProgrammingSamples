mod lexer;
use crate::lexer::Lexer;

const RMAKEFILE: &str = "rmakefile";

fn main() {
    // create lexer
    let mut lexer = Lexer::new(String::from(""), RMAKEFILE.to_string());
    loop {
        let token = lexer.next();
        match token {
            lexer::Token::Eof => {
                break;
            }
            _ => {
                println!("{:?}", token)
            }
        }
    }
}

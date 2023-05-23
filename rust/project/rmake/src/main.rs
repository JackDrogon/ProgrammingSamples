mod lexer;
use crate::lexer::Lexer;

const RMAKEFILE: &str = "rmakefile";

fn main() {
    // let args: Vec<String> = env::args().collect();
    // let mut target_name: Option<String> = None;
    // if args.len() > 1 {
    //     target_name = Some(args[1].clone());
    // }

    // create lexer
    let mut lexer = Lexer::new(String::from(""), RMAKEFILE.to_string());
    loop {
        let token = lexer.next();
        match token {
            lexer::Token::Assignment(line) => {
                println!("Assignment: {}", line);
            }
            lexer::Token::Dependency(line) => {
                println!("Dependency: {}", line);
            }
            lexer::Token::Task(line) => {
                println!("Task: {}", line);
            }
            lexer::Token::Eof => {
                break;
            }
        }
    }
}

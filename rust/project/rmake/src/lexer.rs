use std::fs;
use std::io::BufRead;
use std::io::BufReader;

/// Represents a token in the rmakefile.
#[derive(Debug)]
pub(crate) enum Token {
    /// An assignment token, e.g. `VAR = value`.
    Assignment(String),
    /// A dependency token, e.g. `dependency:`.
    Dependency(String),
    /// A task token, e.g. `\tcommand`.
    Task(String),
    /// An end-of-file token.
    Eof,
}

/// A lexer for the rmakefile format.
pub(crate) struct Lexer {
    env: String,
    rmakefile: String,
    data: Vec<String>,
}

impl Lexer {
    /// Creates a new lexer for the given environment and rmakefile path.
    pub fn new(env: String, rmakefile: String) -> Self {
        let mut lexer = Lexer {
            env,
            rmakefile,
            data: vec![],
        };

        let file = fs::File::open(&lexer.rmakefile).unwrap();
        let reader = BufReader::new(file);
        for line in reader.lines() {
            lexer.data.push(line.unwrap());
        }
        return lexer;
    }

    /// Returns the next token in the rmakefile.
    pub fn next(&mut self) -> Token {
        if self.data.is_empty() {
            return Token::Eof;
        }

        let line = self.data.remove(0).trim_end().to_string();
        if line.is_empty() {
            self.next()
        } else if line.starts_with("\t") {
            Token::Task(line.trim_start().to_string())
        } else if line.contains('=') {
            Token::Assignment(line)
        } else {
            Token::Dependency(line)
        }
    }
}

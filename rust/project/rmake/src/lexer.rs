use std::collections::VecDeque;
use std::fs;
use std::io::BufRead;
use std::io::BufReader;

/// Represents a token in the rmakefile.
#[derive(Debug, PartialEq)]
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
    _env: String,
    rmakefile: String,
    data: VecDeque<String>,
}

impl Lexer {
    /// Creates a new lexer for the given environment and rmakefile path.
    pub fn new(env: String, rmakefile: String) -> Self {
        let mut lexer = Lexer {
            _env: env,
            rmakefile,
            data: VecDeque::new(),
        };

        let file = fs::File::open(&lexer.rmakefile).unwrap();
        let reader = BufReader::new(file);
        for line in reader.lines() {
            lexer.data.push_back(line.unwrap());
        }
        return lexer;
    }

    /// Returns the next token in the rmakefile.
    pub fn next(&mut self) -> Token {
        if self.data.is_empty() {
            return Token::Eof;
        }

        let line = self.data.pop_front().unwrap().trim_end().to_string();
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

#[cfg(test)]
mod tests {
    use super::*;
    use crate::lexer::Lexer;
    use crate::lexer::Token;

    #[test]
    fn test_lexer() {
        let rmakefile = "test.rmake";
        let input = "VAR = value\n\
                     dependency:\n\
                     \tcommand\n\
                     \n\
                     VAR2 = value2\n\
                     dependency2:\n\
                     \tcommand2\n";
        // create a temp test.rmake file && write input into
        let tempfile = std::env::temp_dir().join(rmakefile);

        let mut lexer = Lexer::new("test".to_string(), rmakefile.to_string());
        lexer.data = input.lines().map(|s| s.to_string()).collect();

        assert_eq!(lexer.next(), Token::Assignment("VAR = value".to_string()));
        assert_eq!(lexer.next(), Token::Dependency("dependency:".to_string()));
        assert_eq!(lexer.next(), Token::Task("command".to_string()));
        assert_eq!(lexer.next(), Token::Assignment("VAR2 = value2".to_string()));
        assert_eq!(lexer.next(), Token::Dependency("dependency2:".to_string()));
        assert_eq!(lexer.next(), Token::Task("command2".to_string()));
        assert_eq!(lexer.next(), Token::Eof);
    }
}

#!/usr/bin/env python3
# encoding: utf-8

from ast import Str
from tokenize import String
import unittest
from io import StringIO

from minilisp.lexer import Lexer
from minilisp.token import Token


class StringIOWithName(StringIO):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.filename = "test.minilisp"


# TODO(Drogon): Add more fuzzy test cases
# TODO(Drogon): Check #abc+中+的问题
class LexerTest(unittest.TestCase):
    EOF_TOKEN = Token(Token.Type.EOF, "")

    def __check_token(self, str: Str, token: Token) -> None:
        file = StringIOWithName(str)
        lexer = Lexer(file)

        if not token is None:
            self.assertEqual(lexer.next(), token)
        self.assertEqual(lexer.next(), self.EOF_TOKEN)

    def __check_first_token(self, str: Str, token: Token) -> None:
        file = StringIOWithName(str)
        lexer = Lexer(file)

        self.assertFalse(token is None)
        self.assertEqual(lexer.next(), token)

    def test_token_eof(self) -> None:
        self.__check_token("", None)

    def test_token_lbrack(self) -> None:
        self.__check_token("(", Token(Token.Type.LBRACK, "("))

    def test_token_rbrack(self) -> None:
        self.__check_token(")", Token(Token.Type.RBRACK, ")"))

    def test_token_dot(self) -> None:
        self.__check_token(".", Token(Token.Type.DOT, "."))

    def test_token_quote(self) -> None:
        self.__check_token("'", Token(Token.Type.QUOTE, "'"))

    def test_token_num(self) -> None:
        self.__check_token("123", Token(Token.Type.NUM, "123"))
        self.__check_token("-123", Token(Token.Type.NUM, "-123"))

    def test_token_symbol(self) -> None:
        # +=!@#$%^&*
        cases = [
            ("a", Token(Token.Type.SYMBOL, "a")),
            ("+a", Token(Token.Type.SYMBOL, "+a")),
            ("=a", Token(Token.Type.SYMBOL, "=a")),
            ("!a", Token(Token.Type.SYMBOL, "!a")),
            ("@a", Token(Token.Type.SYMBOL, "@a")),
            ("#a", Token(Token.Type.SYMBOL, "#a")),
            ("$a", Token(Token.Type.SYMBOL, "$a")),
            ("%a", Token(Token.Type.SYMBOL, "%a")),
            ("^a", Token(Token.Type.SYMBOL, "^a")),
            ("&a", Token(Token.Type.SYMBOL, "&a")),
            ("*a", Token(Token.Type.SYMBOL, "*a")),
            ("abc", Token(Token.Type.SYMBOL, "abc")),
        ]
        for case in cases:
            self.__check_token(case[0], case[1])

        one_token_cases = [
            ("abc+", Token(Token.Type.SYMBOL, "abc")),
            ("#abc+", Token(Token.Type.SYMBOL, "#abc")),
        ]
        for case in one_token_cases:
            self.__check_first_token(case[0], case[1])

    def test_token_unkown(self) -> None:
        pass


if __name__ == '__main__':
    unittest.main()
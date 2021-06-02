#!/usr/bin/env python3
# encoding: utf-8

import unittest as ut

from minilisp.token import Token


class TokenTest(ut.TestCase):
    # case: (Token.Type, Raw, Str, Repr)
    cases = [(Token.Type.EOF, "", "EOF: ", 'type: EOF, raw: ""'),
             (Token.Type.LBRACK, "(", "LBRACK: (", 'type: LBRACK, raw: "("'),
             (Token.Type.RBRACK, ")", "RBRACK: )", 'type: RBRACK, raw: ")"'),
             (Token.Type.DOT, ".", "DOT: .", 'type: DOT, raw: "."'),
             (Token.Type.QUOTE, "'", "QUOTE: '", 'type: QUOTE, raw: "\'"'),
             (Token.Type.NUM, "123", "NUM: 123", 'type: NUM, raw: "123"'),
             (Token.Type.SYMBOL, "abc", "SYMBOL: abc",
              'type: SYMBOL, raw: "abc"'),
             (Token.Type.UNKOWN, "?", "UNKOWN: ?", 'type: UNKOWN, raw: "?"')]

    def test_token_create(self) -> None:
        for case in self.cases:
            token = Token(case[0], case[1])
            self.assertEqual(token.type, case[0])
            self.assertEqual(token.raw, case[1])

    def test_token_string(self) -> None:
        for case in self.cases:
            token = Token(case[0], case[1])
            self.assertEqual(str(token), case[2])

    def test_token_repr(self) -> None:
        for case in self.cases:
            token = Token(case[0], case[1])
            self.assertEqual(repr(token), case[3])


if __name__ == '__main__':
    ut.main()
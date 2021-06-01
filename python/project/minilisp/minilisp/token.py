# encoding: utf-8

from enum import Enum, auto


class Token(object):
    Type = Enum("Type", "EOF LBRACK RBRACK DOT QUOTE NUM SYMBOL UNKOWN")

    # def __init__(self, filename, linenum, charnum):
    def __init__(self, type, raw) -> None:
        self.type = type
        self.raw = raw

    def __str__(self) -> str:
        return f'{self.type.name}: {self.raw}'

    def __repr__(self) -> str:
        return f'type: {self.type.name}, raw: "{self.raw}"'


if __name__ == '__main__':
    cases = [(Token.Type.EOF, ""), (Token.Type.LBRACK, "["),
                    (Token.Type.RBRACK, "]"), (Token.Type.DOT, "."),
                    (Token.Type.QUOTE, "'"), (Token.Type.NUM, "123"),
                    (Token.Type.SYMBOL, "abc"), (Token.Type.UNKOWN, "?")]
    for case in cases:
        token = Token(case[0], case[1])
        print(str(token))
        print(repr(token))
        print(f"(Token.{token.type}, '{token.raw}', '{token.__str__()}', '{token.__repr__()}'),")
        print("-" * 20)
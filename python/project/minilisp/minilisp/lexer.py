# encoding: utf-8

from typing import Union

from minilisp.token import Token

# python next return int like c, contains char && EOF
class Buffer:
    def __init__(self, file):
        self.__index = 0
        self.__data = file.read()
        self.__length = len(self.__data)

    def peek(self, next = 0) -> Union[str, None]:
        if self.__index == self.__length:
            return None

        return self.__data[self.__index]

    # return None when eof
    def next(self) -> Union[str, None]:
        if self.__index == self.__length:
            return None

        ch = self.__data[self.__index]
        self.__index += 1
        return ch

    # eof back to last char
    def back(self):
        self.__index -= 1

class Lexer:
    def __init__(self, file):
        self.buffer = Buffer(file)

    # use this method to get the next token
    # throw an exception if there is no more token
    def next(self) -> Token:
        while True:
            ch = self.buffer.next()
            if ch is None: # EOF
                return Token(Token.Type.EOF, "")
            if ch == ' ' or ch == '\n' or ch == '\r' or ch == '\t':
                continue
            elif ch == ';':
                self.__skip_line()
                continue
            elif ch == '(':
                return Token(Token.Type.LBRACK, "(")
            elif ch == ')':
                return Token(Token.Type.RBRACK, ")")
            elif ch == '.':
                return Token(Token.Type.DOT, ".")
            elif ch == "'":
                return Token(Token.Type.QUOTE, "'")
            elif ch.isdigit():
                self.buffer.back()
                return self.__read_num();
            elif ch == '-': # HACK: maybe - as function
                next_ch = self.buffer.peek()
                if not next_ch is None and next_ch.isdigit():
                    return self.__read_num(['-'])
                else:
                    return Token(Token.Type.UNKOWN, f'{ch}{next_ch}')
            elif ch.isalpha() or ch in "+=!@#$%^&*":
                return self.__read_symbol(ch)
            else:
                raise Exception("Unexpected character: " + ch)


    def __skip_line(self):
        while True:
            ch = self.buffer.next()
            if ch is None or ch == '\n':
                return
            elif ch == '\r':
                if self.buffer.peek() == '\n':
                    self.buffer.next()
                return

    def __read_num(self, num: [str] = []) -> Token:
        while True:
            ch = self.buffer.next()
            if ch is None:
                return Token(Token.Type.NUM, ''.join(num))
            elif ch.isdigit():
                num.append(ch)
            else:
                self.buffer.back()
                return Token(Token.Type.NUM, ''.join(num))

    def __read_symbol(self, first_ch) -> Token:
        symbol = [first_ch]
        while True:
            ch = self.buffer.next()
            if ch is None:
                return Token(Token.Type.SYMBOL, ''.join(symbol))
            elif ch.isalpha() or ch == '-':
                symbol.append(ch)
            else:
                self.buffer.back()
                return Token(Token.Type.SYMBOL, ''.join(symbol))
#!/usr/bin/env python3
# encoding: utf-8

from curses import raw
import sys
from typing import Type



class Parser(object):
    Type = Enum("Type", "NUM CELL SYMBOL PRIMITIVE FUNCTION MACRO SPECIAL ENV")
    """Docstring for Lexer. """

    def __init__(self, file):
        self.file = file

    def parse(self):
        pass

    def parse_num(self):
        pass

    def parse_cell(self):
        pass

    def parse_symbol(self):
        pass

    def parse_primitive(self):
        pass

    def parse_function(self):
        pass

    def parse_macro(self):
        pass

    def parse_special(self):
        pass

    def parse_env(self):
        pass


def main():
    file = sys.stdin if len(sys.argv) == 1 else open(sys.argv[1], "r")
    lexer = Lexer(file)
    lexer.parse()


if __name__ == "__main__":
    main()

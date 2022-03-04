#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def READ(s) -> str:
    return s

def EVAL(x, env):
    return x

def PRINT(x):
    return x

def REP(x, env):
    return PRINT(EVAL(READ(x), env))

def readline(prompt):
    return input(prompt)

def main():
    while True:
        try:
            line = readline('user> ')
            if line == '':
                continue
            if line is None:
                break
            print(REP(line, {}))
        except Exception as e:
            print(e)


if __name__ == '__main__':
    main()
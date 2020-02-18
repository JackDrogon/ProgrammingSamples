#!/usr/bin/env python3
# encoding: utf-8

from functools import lru_cache


@lru_cache(maxsize=None)
def fib(n):
    if n < 2:
        return n
    return fib(n-1) + fib(n-2)

def main():
    fibs = [fib(n) for n in range(16)]
    print(fib.cache_info())
    print(fibs)


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
# encoding: utf-8

from pprint import pprint
from run_decorator import runf


@runf
def byte_t():
    b = bytearray(b'spam')
    b.extend(b'eggs')
    pprint(b)

    pprint(b.decode())


def main():
    byte_t()


if __name__ == "__main__": main()

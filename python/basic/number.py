#!/usr/bin/env python3
# encoding: utf-8

import math
from pprint import pprint
from run_decorator import runf


@runf
def integers_t():
    x = 5 + 2 - 3 * 2
    pprint(x)
    pprint(5 / 2)
    pprint(5 // 2)
    pprint(5 % 2)
    pprint(2**100)  # unlimited


@runf
def floats_t():
    x = 4.3**2.4
    pprint(x)
    pprint(3.5e30 * 2.77e45)
    pprint(1000000001.0**3)
    pprint(round(3.49))
    pprint(math.ceil(3.49))


@runf
def complex_numbers_t():
    pprint((3 + 2j)**(2 + 3j))
    x = (3 + 2j) + (4 + 9j)
    print("x: {}, x.real: {}, x.image: {}".format(x, x.real, x.imag))


@runf
def booleans_t():
    # True => 1, False => 0
    x = False
    pprint(x)
    pprint(not False)
    pprint(True * 2)
    pprint(True * -2)
    pprint(True * 0)


@runf
def convert():
    pass


def main():
    integers_t()
    floats_t()
    complex_numbers_t()
    booleans_t()
    convert()


if __name__ == "__main__": main()

#!/usr/bin/env python3
# encoding: utf-8

import sys
sys.path.append("../wrapper")

from pprint import pprint

from run_decorator import runf


class M1:
    pass


@runf
def m1_t():
    m1 = M1()
    m1.n = 10
    print(m1.n)


class M2:
    def __init__(self):
        self.n = 10


@runf
def m2_t():
    m2 = M2()
    print(m2.n)


class Circle:
    def __init__(self):
        self.radius = 1

    def area(self):
        return self.radius * self.radius * 3.14159


@runf
def circle_t():
    circle = Circle()
    print(circle.area())
    print(Circle.area(circle))


def main():
    m1_t()
    m2_t()
    circle_t()


if __name__ == "__main__": main()

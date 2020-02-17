#!/usr/bin/env python3
# encoding: utf-8

import sys
sys.path.append("../wrapper")

from run_decorator import runf

class E1(Exception):
    pass

def e1_t():
    try:
        raise E1("Some information about what went wrong")
    except E1 as error:
        print("Situation:", error)

def main():
    e1_t()

if __name__ == "__main__": main()

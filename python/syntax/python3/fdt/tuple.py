#!/usr/bin/env python3
# encoding: utf-8

"""Python3 tuple type(): """

import sys
sys.path.append("../wrapper")

from pprint import pprint

from run_decorator import runf


@runf
def list_t():
    pprint([1, 2, 3])


def main():
    list_t()


if __name__ == "__main__": main()

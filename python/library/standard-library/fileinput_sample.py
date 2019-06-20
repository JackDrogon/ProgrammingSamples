#!/usr/bin/env python3
# encoding: utf-8

import fileinput


def main():
    for line in fileinput.input():
        if not line.startswith('##'):
            print(line, end="")


if __name__ == "__main__": main()

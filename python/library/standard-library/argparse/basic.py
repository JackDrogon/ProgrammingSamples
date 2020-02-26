#!/usr/bin/env python3
# encoding: utf-8

import argparse

# only use for null arg or -h/--help
parser = argparse.ArgumentParser()


def main():
    print(parser.parse_args())


if __name__ == "__main__":
    main()
#!/usr/bin/env python3
# encoding: utf-8


def run(func):
    print("Run function: {}".format(func.__name__))
    func()
    print("---------------------------------------------------------")

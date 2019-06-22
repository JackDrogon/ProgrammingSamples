#!/usr/bin/env python3
# encoding: utf-8

def run(func):
    print("Run function: {}".format(func.__name__))
    def wrapper_func(*args):
        result = func(*args)
        print("---------------------------------------------------------")
        return result
    return wrapper_func

@run
def func(parms):
    print(parms)

func("Hello")

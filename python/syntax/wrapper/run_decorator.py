#!/usr/bin/env python3
# encoding: utf-8


def runf(func):
    def wrapper_func(*args):
        print("Run function: {}".format(func.__name__))
        result = func(*args)
        print("---------------------------------------------------------")
        return result

    return wrapper_func


@runf
def func(parms):
    print(parms)


if __name__ == "__main__": func("Hello")

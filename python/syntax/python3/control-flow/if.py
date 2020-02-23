#!/usr/bin/env python3
# encoding: utf-8


def main():
    # 先随便定义一个变量
    some_var = 5

    # 这是个if语句。注意缩进在Python里是有意义的
    # 印出"some_var比10小"
    if some_var > 10:
        print("some_var比10大")
    elif some_var < 10:    # elif句是可选的
        print("some_var比10小")
    else:                  # else也是可选的
        print("some_var就是10")


if __name__ == "__main__":
    main()

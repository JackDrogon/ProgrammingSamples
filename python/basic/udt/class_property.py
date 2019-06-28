#!/usr/bin/env python3
# encoding: utf-8


class Temperature:
    def __init__(self):
        self._temp_fahr = 0

    @property
    def temp(self):
        return (self._temp_fahr - 32) * 5 / 9

    @temp.setter
    def temp(self, new_temp):
        self._temp_fahr = new_temp * 9 / 5 + 32


def property_t():
    t = Temperature()
    print(t._temp_fahr)  # 0
    print(t.temp)  # -17.77777777777778
    t.temp = 34
    print(t._temp_fahr)  # 93.2
    print(t.temp)  # 34.0


if __name__ == "__main__": property_t()

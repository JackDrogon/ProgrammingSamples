#!/usr/bin/env python3
# encoding: utf-8

import numpy as np

# [1 2 3]
print(np.array([1, 2, 3]))  # 1d

# [[1 2]
#  [3 4]]
print(np.array([[1, 2], [3, 4]]))  # 2d

# [[1 2 3 4 5]]
print(np.array([1, 2, 3, 4, 5], ndmin=2))

# [1.+0.j 2.+0.j 3.+0.j]
print(np.array([1, 2, 3], dtype=complex))

print(np.dtype('<i4'))

dt = np.dtype([('age', np.int8)])
print(dt)
print(np.array([(10, ), (20, ), (30, )], dtype=dt))

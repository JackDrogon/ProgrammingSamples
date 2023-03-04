#!/usr/bin/env python3

import sys
import re

stdint_pattern = re.compile('schar|u?int8_t|u?int16_t|u?int32_t|u?int64_t|size_t|u?intptr_t|u?intmax_t')
id_pattern = re.compile('[_a-zA-Z0-9]')

def check_line(filename, line_num, line):
    ranges = []
    for x in stdint_pattern.finditer(line):
        s, e = x.start(), x.end()
        if e < len(line) and id_pattern.match(line[e]):
            continue
        if s > 0 and id_pattern.match(line[s - 1]):
            continue
        if s >= 5 and line[s-5:s] == 'std::':
            continue
        ranges.append([s, e])
    if ranges:
        prefix = '[{}:{}] '.format(filename, line_num)
        print(prefix + line)
        print(' ' * len(prefix), end='')
        n = 0
        for r in ranges:
            while n < r[0]:
                print(' ', end='')
                n += 1
            while n < r[1]:
                print('^', end='')
                n += 1
        print()
    return True

def check(filename):
    res = True
    with open(filename) as f:
        line_num = 0
        for l in f:
            line_num += 1
            if not check_line(filename, line_num, l.strip()):
                res = False
    return res

def main():
    res = True
    for x in sys.argv[1:]:
        if not check(x):
            res = False
    return 0 if res else 1

if __name__ == '__main__':
    sys.exit(main())

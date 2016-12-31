#!/usr/bin/env elixir
# coding: utf-8

1           # integer
0x1F        # integer
1.0         # float
true        # boolean
:atom       # atom/symbol
"elixir"    # string
[1, 2, 3]   # list
{1, 2, 3}   # tuple


1 + 1       # 2
10 / 2      # 5.0
div(10, 2)  # 5
div 10, 2

0b1010
0o777
0x1F

1.0
1.0e-10

round 3.58
trunc 3.58

true
true == false

is_boolean true
is_boolean 1

:hello == :world

# UTF-8
"hellö"
"hellö #{:world}"


is_binary("hellö")
byte_size("hellö")
#  Notice the number of bytes in that string is 6, even though it has 5 characters. That's because the character "ö" takes 2 bytes to be represented in UTF-8. We can get the actual length of the string, based on the number of characters, by using the String.length/1 function:
String.length("hellö")
String.upcase "hello"

add = fn a, b -> a + b end
is_function(add)
is_function(add, 2)
is_function(add, 1)
add.(1, 2)

add_two = fn a -> add.(a, 2) end
add_two.(2)

x = 42
(fn -> x = 0 end).()
[1, 2, true, 3]
length [1, 2, 3]
[1, 2, 3] ++ [4, 5, 6]
[1, true, 2, false, 3, true] -- [true, false]
list = [1, 2, 3]
hd(list)
tl(list)

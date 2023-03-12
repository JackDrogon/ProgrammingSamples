#!/usr/bin/env zsh

str=abcde
echo $str  # => abcde

# length
echo $#str # => 5

TEXT="hello world"
for i in {1..${#TEXT}}; do
   echo ${TEXT[i]}
done

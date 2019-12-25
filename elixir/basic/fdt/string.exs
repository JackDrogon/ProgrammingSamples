#!/usr/bin/env elixir
# coding: utf-8

import IO, only: [puts: 1]

# concat
IO.puts("el" <> "ixir")
puts('el' ++ 'ixir') # because string is a list


# interpolation like ruby
name = "Jack"
puts "Hello, #{name}!"

puts "Hello, #{"World"}!"

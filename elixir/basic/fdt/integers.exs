#!/usr/bin/env elixir

import IO, only: [puts: 1]

# by different base
puts 255
puts 0b0110
puts 0o644
puts 0x1F

# big number
puts 2555555555555555555555555555555555

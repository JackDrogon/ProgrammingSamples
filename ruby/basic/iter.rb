#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

# each, any?, map, inject, filter, 
# ?   fold? :

# each
(1..3).each {|n| puts "each: #{n}"}

# any
puts "[1,2,3].any? { |n| n > 0 } => #{ [1,2,3].any? { |n| n > 0 } }"

#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

multiply = -> x, y { x * y }
puts multiply.call(6, 9)
puts multiply[6, 9]

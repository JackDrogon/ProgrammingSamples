#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

RMAKEFILE="rmakefile"
lines = File.readlines(RMAKEFILE)
# puts(lines)

rules = {}
deps = {}

lines.each do |line|
  rule = line.strip.split(":").map(&:strip)
  case rule.length
  when 0
    # []
    # break
  when 1
    # ["gcc 1.o 2.c -o total"]
  when 2
    all_dep = rule[1].split.map(&:strip)
    # TODO: merge dep use array merge
    all_dep.each{|dep| (deps[rule[0]] ||= []) << dep}
    pp deps
    # ["total", "1.o 2.c 2.h 1.h"]
  end
end

# check atime

#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'pp'

meminfo = {}
File.open("/proc/meminfo").each_line do |line|
  name, info = line.strip.split(":")
  meminfo[name] = info.strip
end

pp meminfo

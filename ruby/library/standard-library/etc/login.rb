#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'etc'
require 'pp'

puts "Login: #{Etc.getlogin}"
pp info = Etc.getpwnam(Etc.getlogin)
pp username = info.gecos.split(/,/).first

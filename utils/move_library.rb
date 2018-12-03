#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

STANDARD="standard-library"
EXTEND="extend-library"
MOVE_SCRIPT=__FILE__

Dir.glob('*') do |dir|
  unless dir == STANDARD
    unless dir == EXTEND
      unless dir == MOVE_SCRIPT
        `git mv #{dir} #{EXTEND}`
        `mv #{dir} #{EXTEND}`
      end
    end
  end
end

#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'pstore'

cache = PStore.new "#{ENV["HOME"]}/.cs_cache"
cache.transaction(true) do
  cache.roots.each do |source_name|
    print source_name, " ", cache[source_name], "\n"
  end
end

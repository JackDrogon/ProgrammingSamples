#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'leveldb'

## make a new database
db = LevelDB::DB.new "./sample"

## getting and setting
db.put "it", "works"               # => "works"
db.get "it"                        # => "works"

db["hello"] = "there"              # => "there"
db["hello"]                        # => "there"

db["nonexistent"]                  # => nil

## testing
db.includes? "hello"               # => true
db.contains? "hello"               # => true

## keys and values
db.keys                            # => "it", "hello"
db.values                          # => "there", "works"

## iterating
db.each { |k, v| puts k,v }
db.map { |k, v| puts k,v }
db.each                            # => LevelDB::Iterator

## ranges
db.each(:from => "a", :to => "b")  # => LevelDB::Iterator
db.each(:from => "a", :to => "b").  map { |k, v| puts k,v }
# etc...

## deleting
db.delete "hello"       # => "there"
db.delete "hello"       # => nil

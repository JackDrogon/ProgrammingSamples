#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

# File:  tc_simple_number.rb

gem "minitest"
require "minitest/autorun"

require_relative "simple_number"

class TestSimpleNumber < MiniTest::Unit::TestCase

  def test_simple
    assert_equal(4, SimpleNumber.new(2).add(2))
    assert_equal(6, SimpleNumber.new(2).multiply(3))
  end

end

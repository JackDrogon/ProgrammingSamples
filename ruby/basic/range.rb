#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require "test/unit"

class RangeTest < Test::Unit::TestCase

  def test_init
    assert_equal((1..3).to_a, [1, 2, 3])
    assert_equal((1...3).to_a, [1, 2])
  end

end

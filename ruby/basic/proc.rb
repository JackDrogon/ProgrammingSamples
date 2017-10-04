#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'test/unit'

class ProcTest < Test::Unit::TestCase

  def test_proc
    multiply = -> x, y { x * y }

    assert_equal(multiply.call(6, 9), 54)
    assert_equal(multiply[6, 9], 54)
  end

end


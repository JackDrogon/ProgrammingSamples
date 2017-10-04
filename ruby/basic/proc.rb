#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'test/unit'

class ProcTest < Test::Unit::TestCase

  def gen_times(factor)
    return Proc.new {|n| n*factor}
  end

  def test_proc
    # multiply = -> x, y { x * y }
    multiply = Proc.new {|x, y| x*y}

    assert_equal(multiply.call(6, 9), 54)
    assert_equal(multiply[6, 9], 54)
  end

  def test_proc_with_local_variable
    multiply_3 = gen_times(3)

    assert_equal(multiply_3.call(3), 9)
    assert_equal(multiply_3[3], 9)
  end

end


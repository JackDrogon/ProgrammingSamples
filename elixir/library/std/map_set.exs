#!/usr/bin/env elixir
# coding: utf-8

ExUnit.start

defmodule MapSetTest do
  use ExUnit.Case

  test "new" do
    assert MapSet.new([2, 4, 6]) == MapSet.new([1, 2, 3], &(&1*2))
  end

end

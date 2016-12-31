#!/usr/bin/env elixir
# coding: utf-8

defmodule Math do
  def sum(a, b) do
    do_sum a, b
  end

  defp do_sum(a, b) do
    a + b
  end

  def zero?(0) do
    true
  end

  def zero?(x) when is_number(x) do
    false
  end
end

IO.puts Math.sum(1, 2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(10)

defmodule Geometry do
  def area({:rectangle, w, h}) do
    w * h
  end

  def area({:circle, r}) do
    :Math.PI * r * r
  end
end

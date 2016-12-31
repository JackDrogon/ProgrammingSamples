#!/usr/bin/env elixir
# coding: utf-8

fn -> IO.puts "Hello,World!" end.()

fall_velocity = &(:math.sqrt(2 * 9.8 * &1))
IO.puts fall_velocity.(20)

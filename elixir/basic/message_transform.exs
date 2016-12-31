#!/usr/bin/env elixir
# coding: utf-8

send self, {:hello, "world"}

receive do
  {:hello, msg} -> msg; IO.puts msg
  {:world, _} -> "won't match"
end

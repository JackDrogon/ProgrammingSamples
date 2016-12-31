#!/usr/bin/env elixir
# coding: utf-8

case {1, 2, 3} do
  {4, 5, 6} ->
    "This clause won't match"
  {1, x, 3} ->
    "This clause will match and bind x to 2 in this clause"
    IO.puts x
  _ ->
    "This clause would match any value"
end

fall_velocity = fn(planmo, distance) when distance >= 0 ->
  case planmo do
    :earth -> :math.sqrt(2 * 9.8 * distance)
    :moon -> :math.sqrt(2 * 1.6 * distance)
    :mars -> :math.sqrt(2 * 3.71 * distance)
  end
end

IO.puts fall_velocity.(:earth, 10)
IO.puts fall_velocity.(:moon, 10)
IO.puts fall_velocity.(:mars, 10)

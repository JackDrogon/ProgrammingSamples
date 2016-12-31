#!/usr/bin/env elixir

defmodule PrintTri do
  def myfun(x) when x > 1 do
    IO.write "*"
    myfun(x-1)
  end

  def myfun(x) when x <= 1 do
    IO.puts "*"
  end
end

1..10 |> Enum.each &(PrintTri.myfun &1)

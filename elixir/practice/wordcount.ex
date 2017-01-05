defmodule Wordcount do
  @moduledoc "simple wordcount program"
  @nodecount 3

  def start(file) do
    s = self
    spawn(fn -> count(file,s) end)
  end

  defp count(file,caller) do
    s = self
    nodes = Enum.map(1..@nodecount,fn _e -> spawn(fn -> countLine end) end)
    count = File.stream!(file)
            |> Enum.reduce(0,fn e,r -> send(Enum.at(nodes,:random.uniform(@nodecount)-1),{e,s});r+1 end)
    IO.puts("total count is #{count}")
    v = countDown(count,%{})
    nodes |> Enum.each(&(send(&1,Stop)))
    send(caller,v)
  end

  defp countDown(0,m) do
    IO.puts("ending")
    m
  end

  defp countDown(n,m) do
    receive do
      map -> countDown(n-1, Enum.reduce(map,m,fn {k,v},r -> Map.put(r,k,Map.get(r,k,0)+v) end))
    after 5000 -> countDown( n-1 , m)
    end
  end

  defp countLine do
    receive do
      {line,caller} ->
        IO.puts("#{inspect(self)} is doing work")
        m = line
            |> String.strip
            |> String.split(" ")
            |> Stream.filter(&(String.length(&1) > 0))
            |> Enum.reduce(%{},fn e,r ->
              case r[e] do
                nil -> Map.put(r,e,1)
                v   -> Map.put(r,e,v+1)
              end
            end
          )
          send(caller,m)
          countLine
          Stop ->
            IO.puts("#{inspect(self)} quits")
          _other ->
            IO.puts("error message")
            countLine
    end
  end
end

#!/usr/bin/env elixir

{:ok, file} = File.open "hello", [:write]
IO.binwrite file, "world"
File.close file

# IO.puts(File.read "hello")

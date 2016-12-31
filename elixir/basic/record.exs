#!/usr/bin/env elixir

import Record

defrecord Person, name: nil, age: 0, height: 0
joe_info = Person.new(name: "Joe", age: 30, height: 180)
IO.puts joe_info

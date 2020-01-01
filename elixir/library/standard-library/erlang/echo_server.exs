#!/usr/bin/env elixir
# coding: utf-8

defmodule EchoServer do
  require Logger

  def start(port) do
    # The options below mean:
    #
    # 1. `:binary` - receives data as binaries (instead of lists)
    # 2. `packet: :line` - receives data line by line
    # 3. `active: false` - blocks on `:gen_tcp.recv/2` until data is available
    # 4. `reuseaddr: true` - allows us to reuse the address if the listener crashes
    #
    {:ok, socket} =
      :gen_tcp.listen(port, [:binary, packet: :line, active: false, reuseaddr: true])
    Logger.info("Accepting connections on port #{port}")
    accept(socket)
  end

  defp accept(socket) do
    {:ok, socket} = :gen_tcp.accept(socket)
    EchoServer.Client.start(socket)
    accept(socket)
  end
end

defmodule EchoServer.Client do
  require Logger

  defstruct handle: nil, peername: ""

  def start(socket) do
    {:ok, {ip_address, port}} = :inet.peername(socket)
    peername = "#{:inet.ntoa(ip_address)}:#{port}"

    serve(%__MODULE__{handle: socket, peername: peername})
  end

  def serve(socket) do
    socket
    |> read
    |> write(socket)

    serve(socket)
  end

  defp read(socket) do
    {:ok, data} = :gen_tcp.recv(socket.handle, 0)
    Logger.info("#{socket.peername} recv '#{String.trim(data)}'")

    data
  end

  defp write(line, socket) do
    :gen_tcp.send(socket.handle, line)
  end
end

EchoServer.start 3000

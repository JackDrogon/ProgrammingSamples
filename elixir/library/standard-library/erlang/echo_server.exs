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
    {:ok, lsocket} =
      :gen_tcp.listen(port, [:binary, packet: :line, active: false, reuseaddr: true])
    Logger.info("Accepting connections on port #{port}")
    accept(lsocket)
  end

  defp accept(lsocket) do
    {:ok, socket} = :gen_tcp.accept(lsocket)
    spawn(EchoServer.Client, :start, [socket])
    accept(lsocket)
  end
end

defmodule EchoServer.Client do
  require Logger

  defstruct handle: nil, peername: ""

  def start(socket) do
    {:ok, {ip_address, port}} = :inet.peername(socket)
    peername = "#{:inet.ntoa(ip_address)}:#{port}"

    read(%__MODULE__{handle: socket, peername: peername})
  end

  defp read(socket) do
    case :gen_tcp.recv(socket.handle, 0) do
      {:ok, data} ->
        Logger.info("#{socket.peername} recv '#{String.trim(data)}'")
        write(socket, data)
      {:error, :closed} ->
        Logger.info("#{socket.peername} closed")
        :gen_tcp.close(socket.handle)
    end
  end

  defp write(socket, data) do
    :gen_tcp.send(socket.handle, data)
    read(socket)
  end
end

EchoServer.start 3000

package main

import (
	"fmt"
	"io"
	"net"
)

func handleConn(conn net.Conn) {
	defer conn.Close()

	io.Copy(conn, conn)
}

type EchoServer struct {
	address string
}

func NewEchoServer(address string) *EchoServer {
	return &EchoServer{
		address: address,
	}
}

func (srv *EchoServer) Run() {
	listener, err := net.Listen("tcp", srv.address)
	if err != nil {
		fmt.Println("Listen error:", err)
		return
	}
	defer listener.Close()
	println("Listen on", srv.address)

	for {
		conn, err := listener.Accept()
		if err != nil {
			fmt.Println("Accept error:", err)
			continue
		}

		go handleConn(conn)
	}
}

func main() {
	srv := NewEchoServer("127.0.0.1:8888")
	srv.Run()
}

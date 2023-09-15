package main

import (
	"fmt"
	"io"
	"net"
	"os"
)

func main() {
	// argv[1] host
	// argv[2] port
	if len(os.Args) != 3 {
		fmt.Println("Usage: ", os.Args[0], "host port")
		os.Exit(1)
	}
	addr := os.Args[1] + ":" + os.Args[2]

	conn, err := net.Dial("tcp", addr)
	if err != nil {
		fmt.Println("Error", err.Error())
		os.Exit(1)
	}

	fmt.Printf("Conncet to server: [%s]\n", addr)
	go io.Copy(conn, os.Stdout)
	io.Copy(os.Stdin, conn)
}

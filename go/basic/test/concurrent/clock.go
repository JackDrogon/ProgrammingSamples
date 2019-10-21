// Clock1 is a TCP server that periodically writes the time.
package main

import (
	"io"
	"log"
	"net"
	"time"
)

func handleConn(c net.Conn) {
	defer c.Close()

	for {
		_, err := io.WriteString(c, time.Now().Format("15:04:05\n"))
		if err != nil {
			return
		}
		time.Sleep(1 * time.Second)
	}
}

func main() {
	address := "localhost:8000"
	listener, err := net.Listen("tcp", address)
	if err != nil {
		log.Fatal(err)
	}

	log.Printf("Listen on %s\n", address)
	for {
		conn, err := listener.Accept()
		if err != nil {
			log.Print(err)
			continue
		}

		handleConn(conn)
	}
}

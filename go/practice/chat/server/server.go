package server

import (
	"client"
	"log"
	"net"
	"time"
)

type Server struct {
	name     string
	addr     string
	listener net.Listener

	client_id int
	room *message.Room
}

func NewServer(addr string) (*Server, error) {
	listener, err := net.Listen("tcp", addr)
	if err != nil {
		return nil, err
	}

	return &Server{
		name:     "ChatServer",
		addr:     addr,
		listener: listener,
		id:       0,
		room: message.NewRoom(),
	}, err
}

func (srv *Server) Serve() {
	defer srv.listener.Close()

	var tempDelay time.Duration // how long to sleep on accept failure

	for {
		conn, err := srv.listener.Accept()
		if err != nil {
			if ne, ok := err.(net.Error); ok && ne.Temporary() {
				if tempDelay == 0 {
					tempDelay = 5 * time.Millisecond
				} else {
					tempDelay *= 2
				}
				if max := 1 * time.Second; tempDelay > max {
					tempDelay = max
				}
				log.Printf("%v: Accept error: %v; retrying in %v", srv.name, err, tempDelay)
				time.Sleep(tempDelay)
				continue
			}
			continue
		}

		tempDelay = 0
		log.Println("Accept a connection:", conn.RemoteAddr().String())
		go client.NewClient(conn, srv.client_id++, srv.room).Run()
	}
}

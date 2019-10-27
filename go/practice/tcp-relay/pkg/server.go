package pkg

import (
	"flag"
	"log"
	"net"
	"time"
)

type TCPRelayServer struct {
	listenAddress  string
	remoteAddress  string
	listener       net.Listener
	clientsInChan  chan struct{}
	clientsOutChan chan struct{}
}

func NewTCPRelayServer(listenAddress, remoteAddress string) (*TCPRelayServer, error) {
	listener, err := net.Listen("tcp", listenAddress)
	return &TCPRelayServer{
		listenAddress:  listenAddress,
		remoteAddress:  remoteAddress,
		listener:       listener,
		clientsInChan:  make(chan struct{}, 100),
		clientsOutChan: make(chan struct{}, 100),
	}, err
}

func (tcpReplayServer *TCPRelayServer) Serve() {
	defer tcpReplayServer.listener.Close()

	go tcpReplayServer.clientsCount()

	name := "TcpRelayServer"
	var tempDelay time.Duration // how long to sleep on accept failure

	log.Printf("%s start serve @%s", name, tcpReplayServer.listenAddress)
	log.Println("Accepting", tcpReplayServer.listener.Addr().String())

	for {
		conn, err := tcpReplayServer.listener.Accept()
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
				log.Printf("%v: Accept error: %v; retrying in %v", name, err, tempDelay)
				time.Sleep(tempDelay)
				continue
			}
			// return err
			return
		}
		tempDelay = 0
		log.Println("Accept a connection:", conn.RemoteAddr().String())
		go NewTCPRelayClient(tcpReplayServer, conn).Run()
	}
}

func (tcpReplayServer *TCPRelayServer) RemoteAddress() string {
	return tcpReplayServer.remoteAddress
}

func (tcpReplayServer *TCPRelayServer) AddClient() {
	tcpReplayServer.clientsInChan <- struct{}{}
}

func (tcpReplayServer *TCPRelayServer) RemoveClient() {
	tcpReplayServer.clientsOutChan <- struct{}{}
}

func (tcpReplayServer *TCPRelayServer) clientsCount() {
	log.Println("Run clients count!")
	clients := 0
	for {
		select {
		case <-tcpReplayServer.clientsInChan:
			clients++
		case <-tcpReplayServer.clientsOutChan:
			clients--
		}
		log.Println("Total Clients:", clients)
	}
}

func NewTCPRelayServerWithVerify(listenAddress, remoteAddress string) *TCPRelayServer {
	if remoteAddress == "" {
		flag.Usage()
		return nil
	}
	TCPRelayServer, _ := NewTCPRelayServer(listenAddress, remoteAddress)
	return TCPRelayServer
}

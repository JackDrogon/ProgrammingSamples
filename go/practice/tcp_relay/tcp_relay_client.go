package main

import (
	"io"
	"log"
	"net"
)

type TCPRelayClient struct {
	conn       net.Conn
	remoteConn net.Conn
	server     *TCPRelayServer
}

func NewTCPRelayClient(server *TCPRelayServer, conn net.Conn) *TCPRelayClient {
	server.AddClient()
	if remoteConn, err := net.Dial("tcp", server.RemoteAddress()); err == nil {
		log.Printf("Connect to remoteAddr:%s successfully", server.RemoteAddress())
		return &TCPRelayClient{
			conn:       conn,
			remoteConn: remoteConn,
			server:     server,
		}
	}

	conn.Close()
	return nil
}

func (tcpRelayClient *TCPRelayClient) Close() {
	// TODO: Add detailed log
	log.Printf("Close Client: %s => %s", tcpRelayClient.conn.RemoteAddr().String(), tcpRelayClient.remoteConn.RemoteAddr().String())
	tcpRelayClient.server.RemoveClient()
	tcpRelayClient.conn.Close()
	tcpRelayClient.remoteConn.Close()
}

func (tcpRelayClient *TCPRelayClient) Run() {
	// FIXME: err goroutin iocopy
	log.Printf("In TcpRelayClient Run")
	if tcpRelayClient == nil {
		log.Printf("Nil remote connections")
		return
	}

	defer tcpRelayClient.Close()
	go io.Copy(tcpRelayClient.conn, tcpRelayClient.remoteConn)
	io.Copy(tcpRelayClient.remoteConn, tcpRelayClient.conn)
}

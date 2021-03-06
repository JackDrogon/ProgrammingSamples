package main

import (
	"flag"
	"log"
	"os"
)

// TODO: 流量控制
// TODO: 确认listenAddr， remoteAddr的可用性，remoteAddr的可访问性

// FAQ io.Copy 如果有nil会panic， 看一下堆栈

func init() {
	log.SetFlags(log.Lshortfile | log.LstdFlags)
}

func main() {
	listenAddress := flag.String("l", "0.0.0.0:8080", "Listen Address")
	remoteAddress := flag.String("r", "", "Listen Address")
	flag.Parse()

	if TCPRelayServer := NewTCPRelayServerWithVerify(*listenAddress, *remoteAddress); TCPRelayServer == nil {
		os.Exit(1)
	} else {
		log.Printf("%v\n", *TCPRelayServer)
		TCPRelayServer.Serve()
	}
}

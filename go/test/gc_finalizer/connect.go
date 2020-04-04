package main

import (
	"fmt"
	"net"
	"runtime"
	"time"
)

func run() {
	conn, _ := net.Dial("tcp", "127.0.0.1:9877")
	conn.Write([]byte("Hello\n"))
}

func main() {
	fmt.Println("Begin")
	run()
	runtime.GC()
	time.Sleep(time.Second * 3)
	runtime.GC()
	time.Sleep(time.Second * 10)
	fmt.Println("End")
}

package main

import (
	"fmt"
	"runtime"
)

func main() {
	var buf [1024]byte
	runtime.Stack(buf[:], false)
	fmt.Println(string(buf[:]))
}

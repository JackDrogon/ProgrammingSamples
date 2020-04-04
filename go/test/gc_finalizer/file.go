package main

import (
	"fmt"
	"os"
	"runtime"
	"time"
)

func open() {
	os.NewFile(1, "stdout")
}

func main() {
	runtime.GOMAXPROCS(2)
	open()

	// Force finalization of unreachable objects
	_ = make([]byte, 1e7)
	runtime.GC()
	time.Sleep(time.Second)
	runtime.GC()
	time.Sleep(time.Second)
	runtime.GC()

	_, err := fmt.Println("some text") // Print something via os.Stdout
	if err != nil {
		fmt.Fprintln(os.Stderr, "could not print the text")
	}
}

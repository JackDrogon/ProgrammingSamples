// Package main provides ...
package main

import (
	"log"
	"os"
)

func main() {
	logger := log.New(os.Stderr, "logger: ", log.Ldate|log.Ltime|log.Lmicroseconds|log.Lshortfile)
	logger.Print("Hello, log file!")
}

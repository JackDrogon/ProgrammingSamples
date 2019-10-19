// Package main provides ...
package main

import (
	"log"
	"os"
)

func main() {
	hostname, err := os.Hostname()
	if err != nil {
		log.Fatalln(err)
	}

	log.Printf("hostname: %s\n", hostname)
}

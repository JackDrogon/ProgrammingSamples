package main

import (
	"fmt"
	"os"
)

func osExit() {
	defer fmt.Println("Defer in osExit")
	os.Exit(1)
}

func main() {
	defer fmt.Println("Defer run")
	osExit()
}

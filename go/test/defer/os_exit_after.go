package main

import (
	"fmt"
	"os"
)

func osExit() {
	os.Exit(1)
}

func main() {
	defer fmt.Println("Defer run")
	osExit()
}

package main

import (
	"fmt"
	"os"
)

func osExit() {
	os.Exit(1)
}

func main() {
	osExit()
	defer fmt.Println("Defer run")
}

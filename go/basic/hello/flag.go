// Package main provides ...
package main

import (
	"flag"
	"fmt"
)

func main() {
	flag.Parse()
	args := flag.Args()

	fmt.Printf("%v\n", args)
}

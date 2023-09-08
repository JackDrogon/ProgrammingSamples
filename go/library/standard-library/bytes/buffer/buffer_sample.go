package main

import (
	"bytes"
	"os"
)

func main() {
	var b bytes.Buffer
	b.Grow(64)
	b.Write([]byte("abcde"))
	// fmt.Printf("%s\n", string(b.Next(2)))
	// fmt.Printf("%s\n", string(b.Next(2)))
	// fmt.Printf("%s\n", string(b.Next(2)))
	b.WriteTo(os.Stdout)
}

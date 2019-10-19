// Package main provides ...
package main

import "fmt"

// or func add(x int, y int) int {
func add(x, y int) int {
	return x + y
}

func main() {
	fmt.Println(add(11, 12))
}

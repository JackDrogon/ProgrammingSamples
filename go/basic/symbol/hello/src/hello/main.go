// Package main provides ...
package main

import (
	"fmt"
	"hello/integer"
)

func main() {
	var a integer.Integer = 1
	if a.Less(2) {
		fmt.Println(a, "Less 2")
	}
}

// Package main provides ...
package main

import (
	"fmt"
)

func test_value(x [2]int) {
	fmt.Printf("x: %p\n", &x)
}

func test_slice(x []int) {
	fmt.Printf("x: %p\n", &x)
}

func main() {
	a := [2]int{} // *[2]int...
	fmt.Printf("a: %p\n", &a)
	test_value(a)
	test_slice(a[:])
	fmt.Println(a)

	s1 := []int{1, 2}    // slice
	c1 := [...]int{1, 2} // array
	test_slice(s1)
}

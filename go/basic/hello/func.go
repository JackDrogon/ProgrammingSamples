// Package main provides ...
package main

import (
	"fmt"
	"math"
)

func adder(sum int) func(int) int {
	return func(x int) int {
		sum += x
		return x
	}
}

func test(s string, n ...int) string {
	var x int
	for _, i := range n {
		x += i
	}
	return fmt.Sprintf(s, x)
}

func main() {
	hypot := func(x, y float64) float64 {
		return math.Sqrt(x*x + y*y)
	}
	fmt.Println(hypot(3, 4))

	fmt.Println("==================================")
	s := []int{1, 2, 3}
	println(test("sum: %d", s...))
}

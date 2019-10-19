package main

import (
	. "fmt"
)

func add(x, y int) (z int) {
	defer func() {
		Println(z) // 输出: 203
	}()
	z = x + y
	return z + 200 // 执⾏行顺序: (z = z + 200) -> (call defer) -> (ret)
}

func main() {
	Println(add(1, 2)) // 输出: 203
}

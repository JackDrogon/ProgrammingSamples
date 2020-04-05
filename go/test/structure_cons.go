package main

import "fmt"

func main() {
	var (
		a int = 10
		b int = 20
		c interface{}
		d interface{}
	)

	fmt.Printf("%p => %p\n", &a, &b)
	fmt.Printf("%p => %p\n", &c, &d)
}

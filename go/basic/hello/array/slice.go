package main

import "fmt"

func main() {
	a := []string{"A", "B", "C", "D", "E"}
	fmt.Println(a, len(a), cap(a)) // 0 5
	b := a
	a = a[:0]
	fmt.Println(a, len(a), cap(a)) // [] 0 5
	a = append(a, "X")
	fmt.Println(b, len(b), cap(b)) // [] 0 5
	fmt.Println(a, len(a), cap(a)) // [] 0 5
}

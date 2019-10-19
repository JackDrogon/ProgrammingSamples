// Package main provides ...
package main

import (
	. "fmt"
)

func array_value_copy(arr [2]int) {
	Printf("array_value_copy arr pointer: %p\n", &arr)
	arr[1] = 1000
	Printf("array_value_copy arr[1] is %d\n", arr[1])
}

func range_iter(arr [2]int) {
	Println("======= Range Iter Example =======")
	for i := 0; i < len(arr); i++ {
		Println("Element", i, "of array is", arr[i])
	}

	for i, v := range arr {
		Println("Element", i, "of array is", v)
	}
}

func main() {
	var buf [0x1000]byte
	Println(len(buf))

	arr := [2]int{10, 100}
	// pointer p => *[2] int
	Printf("main arr pointer: %p\n", &arr)
	Printf("main arr length: %d\n", len(arr))
	Printf("main arr capacity: %d\n", cap(arr))
	Printf("main arr[1] is %d\n", arr[1])
	array_value_copy(arr)
	Printf("main arr[1] is %d\n", arr[1])

	range_iter(arr)

	Println("==========================================")

	array_with_nosize := []int{1, 2}
	Printf("array_with_nosize, length: %d, capacity: %d\n", len(array_with_nosize), cap(array_with_nosize))
}

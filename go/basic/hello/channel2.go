// Package main provides ...
package main

import (
	"fmt"
	"sync"
)

func main() {
	data := make(chan int)

	var wg sync.WaitGroup

	go func() {
		for d := range data {
			fmt.Println(d)
		}

		fmt.Println("recv over.")
		wg.Done()
	}()

	data <- 1
	data <- 2
	data <- 3
	data <- 4
	// data <- 5
	// data <- 6
	close(data)

	fmt.Println("send over.")

	wg.Wait()
}

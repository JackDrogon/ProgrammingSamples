// Package main provides ...
package main

import (
	"fmt"
)

func main() {
	data := make(chan int)
	exit := make(chan bool)

	go func() {
		for d := range data {
			fmt.Println(d)
		}

		fmt.Println("recv over.")
		exit <- true
	}()

	data <- 1
	data <- 2
	data <- 3
	data <- 4
	// data <- 5
	// data <- 6
	close(data)

	fmt.Println("send over.")

	<-exit
}

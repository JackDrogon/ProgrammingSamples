// Package main provides ...
package main

import "fmt"

func main() {
	messages := make(chan string, 2)

	messages <- "hello1"
	messages <- "hello2"

	fmt.Println("Put all Messages to buffer")

	fmt.Println(<-messages)
	fmt.Println(<-messages)
}

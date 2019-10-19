// Package main provides ...
package main

import "fmt"

func main() {
	var messages chan string

	messages <- "hello1"
	messages <- "hello2"

	fmt.Println("Put all Messages to buffer")

	go fmt.Println(<-messages)
	go fmt.Println(<-messages)
}

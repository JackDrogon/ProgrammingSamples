package main

import "fmt"

func main() {
	for range make([]struct{}, 20) {
		fmt.Println("H")
	}
}

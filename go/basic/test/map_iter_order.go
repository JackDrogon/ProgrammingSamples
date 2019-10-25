package main

import (
	"fmt"
	"time"
)

func main() {
	m := map[string]string{"hello": "world", "foo": "bar", "ca": "nimei", "1": "2", "3": "4"}

	for i := 0; i < 10; i++ {
		for key, value := range m {
			fmt.Printf("key: %s, value: %s, ", key, value)
		}
		fmt.Printf("\n")
		time.Sleep(1)
	}
}

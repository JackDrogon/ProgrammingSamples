package main

import (
	"fmt"
	"time"
)

func main() {
	var t time.Duration
	t = 3
	fmt.Println(t.Nanoseconds())
}

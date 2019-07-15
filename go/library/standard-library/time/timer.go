package main

import (
	"fmt"
	"time"
)

func main() {
	duration := time.Duration(time.Second)
	timer := time.NewTimer(duration)
	defer timer.Stop()

	for {
		t := <-timer.C

		fmt.Println("Current time: ", t)
		timer.Reset(duration)
	}
}

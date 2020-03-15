package main

import (
	"fmt"
	"runtime"
)

func run() {
	funcName, file, line, ok := runtime.Caller(1)
	if ok {
		fmt.Println("Func Name=" + runtime.FuncForPC(funcName).Name())
		fmt.Printf("file: %s    line=%d\n", file, line)
	}
}

func main() {
	run()
}

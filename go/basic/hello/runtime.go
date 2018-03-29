package main

import (
	"fmt"
	"runtime"
)

func runtimeCompileInfo() {
	fmt.Println("OS:", runtime.GOOS)
	fmt.Println("Arch:", runtime.GOARCH)
	fmt.Println("Compiler:", runtime.Compiler)
	fmt.Println("Go Version:", runtime.Version())
}

func runtimeGoInfo() {
	fmt.Println("GOROOT:", runtime.GOROOT())
}

func runtimeDefaultVariable() {
	fmt.Println("MemProfileRate:", runtime.MemProfileRate)
	fmt.Println("NumCPU:", runtime.NumCPU())
}

func runtimeNowInfo() {
	fmt.Println("NumCgoCall:", runtime.NumCgoCall())
	fmt.Println("NumGoroutine:", runtime.NumGoroutine())
}

func main() {
	runtimeCompileInfo()
	runtimeGoInfo()
	runtimeDefaultVariable()
	runtimeNowInfo()
}

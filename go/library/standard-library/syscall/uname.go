package main

import (
	"fmt"
	"syscall"
)

func main() {
	var utsname syscall.Utsname
	if syscall.Uname(utsname) != nil {
		fmt.Printf("%+v", utsname)
	}
}

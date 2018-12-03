package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Printf("%q\n", strings.Split(",a,b,c,d,e,", ","))
	fmt.Printf("%q\n", strings.Split(",a,b,c,d,e,", ""))
	fmt.Printf("%q\n", strings.Split(",a,b,-c,d,e,", ",-"))
	fmt.Printf("%q\n", strings.Split("Hello，world！中国，你好！", "！"))
	fmt.Printf("%q\n", strings.Split("Hello，world！中国，你好！", "，"))
	fmt.Printf("%q\n", strings.Split("bjac:beta", ":"))
	fmt.Printf("%q\n", strings.Split("bjac:", ":"))
	fmt.Printf("%q\n", strings.Split("", ":"))
	fmt.Printf("%q\n", strings.Split(":", ":"))
}

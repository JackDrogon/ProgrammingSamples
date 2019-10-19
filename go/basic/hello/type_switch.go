package main

import "fmt"

func typeName(v interface{}) string {
	switch v.(type) {
	case int:
		return "int"
	case string:
		return "string"
	default:
		return "unknown"
	}
}

func main() {
	fmt.Println(typeName(19))
	fmt.Println(typeName("123"))
}

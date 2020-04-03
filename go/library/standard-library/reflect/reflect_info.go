package main

import (
	"fmt"
	"reflect"
)

func reflectInfo(v interface{}) {
	t := reflect.TypeOf(v)
	fmt.Printf("========= Reflect Info of %s =========\n", t.String())
	fmt.Println("Align:", t.Align())
	fmt.Println("Filed Align:", t.FieldAlign())
}

func main() {
	reflectInfo(3)
	reflectInfo(int32(3))
	reflectInfo("1234")
}

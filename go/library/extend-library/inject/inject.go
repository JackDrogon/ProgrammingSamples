package main

import (
	"fmt"

	"github.com/codegangsta/inject"
)

type SpecialString interface{}

func Say(name string, gender SpecialString, age int) {
	fmt.Printf("My name is %s, gender is %s, age is %d!\n", name, gender, age)
}

func main() {
	inj := inject.New()
	inj.Map("陈一回").MapTo("男", (*SpecialString)(nil)).Map(20)
	inj.Invoke(Say)
}

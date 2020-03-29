package main

import (
	"fmt"
	"unsafe"
)

type Int int

func (v *Int) Print(i int) {
	fmt.Printf("Raw %v -> %v\n", v, i)
}

func rawMemoryAccess(b uintptr) []byte {
	return (*(*[0xFF]byte)(unsafe.Pointer(b)))[:]
}

func main() {
	a := Int(15325235)
	f := a.Print
	a.Print(111111111)
	fmt.Printf("Print:%v, Int.Print: %v\n", (*Int).Print, f)
	f(10)
	ss := rawMemoryAccess((uintptr)(unsafe.Pointer(&f)))
	fmt.Println(ss)

	// t := reflect.TypeOf(f)
	// fmt.Printf("Type: %v\n", t)
	// fmt.Printf("Number of methods: %d\n", t.NumMethod())
	// for i := 0; i < t.NumMethod(); i++ {
	// 	m := t.Method(i)
	// 	fmt.Printf("Method %s\n", m)
	// 	fmt.Printf("\tName: %s\n", m.Name)
	// 	fmt.Printf("\tPackage path: %s\n", m.PkgPath)
	// }
}

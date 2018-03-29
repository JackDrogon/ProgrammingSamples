package main

import (
	"fmt"
	"sort"
)

func mapBasicUsage() {
	// XXX DOC: https://blog.golang.org/go-maps-in-action
	// XXX create map => m := make(map[string]int)
	m := make(map[string]int)
	// XXX create map with value => n := map[string]int{"foo": 1, "bar": 2}
	n := map[string]int{"foo": 1, "bar": 2}
	fmt.Println("map:", n)

	// XXX map usage => m[k] = v
	m["k1"] = 7
	m["k2"] = 13
	fmt.Println("map: ", m)

	m["k1"] = 10
	fmt.Println("map: ", m)

	v1 := m["k1"]
	fmt.Println("v1: ", v1)

	// XXX map key exist => v, ok := m[k]
	v2, ok := m["k3"]
	if ok {
		fmt.Println("v2: ", v2)
	} else {
		fmt.Println(`not found m["k3"]`)
	}

	fmt.Println("len: ", len(m))

	// XXX map delete key => delete(m, k)
	delete(m, "k2")
	fmt.Println("map: ", m)

	_, prs := m["k2"]
	fmt.Println("prs:", prs)

	// XXX map range for
	for k, v := range m {
		fmt.Println("kv:", k, "=>", v)
	}

	// XXX map len
	_ := len(m)

	// TODO inspect map use reflect
}

func keyTypes() {
	// As mentioned earlier, map keys may be of any type that is comparable.
	// The language spec defines this precisely, but in short, comparable types are boolean, numeric, string, pointer, channel, and interface types, and structs or arrays that contain only those types. Notably absent from the list are slices, maps, and functions; these types cannot be compared using ==, and may not be used as map keys.
}

func iterationOrder() {
	// When iterating over a map with a range loop, the iteration order is not specified and is not guaranteed to be the same from one iteration to the next. Since
	// Since Go 1 the runtime randomizes map iteration order, as programmers relied on the stable iteration order of the previous implementation. If you require a stable iteration order you must maintain a separate data structure that specifies that order.
	var m map[int]string
	var keys []int
	for k := range m {
		keys = append(keys, k)
	}
	sort.Ints(keys)
	for _, k := range keys {
		fmt.Println("Key:", k, "Value:", m[k])
	}
}

func inspectMap() {
	keyTypes()
	iterationOrder()
}

func main() {
	mapBasicUsage()
	inspectMap()
}

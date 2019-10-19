// Package main provides ...
package main

import "fmt"

type Vertex struct {
	x, y int
}

func (this *Vertex) PPrint() {
	fmt.Println("Vertex.x:", this.x, ",", "Vertex.y:", this.y)
	fmt.Printf("The address of Vertex is %p\n", this)
}

func (this Vertex) VPrint() {
	fmt.Println("Vertex.x:", this.x, ",", "Vertex.y:", this.y)
	fmt.Printf("The address of Vertex is %p\n", &this)
}

func main() {
	v := new(Vertex)
	fmt.Println(v)
	v.x, v.y = 11, 9
	fmt.Println(v)

	v.PPrint()
	v.VPrint()
}

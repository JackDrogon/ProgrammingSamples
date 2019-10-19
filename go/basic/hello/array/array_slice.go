// Package main provides ...
package main

import (
	"fmt"
)

func main() {
	a := [10]int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	s := a[0:]
	s[2] = 2
	s = append(s, 11, 22, 33)
	s[3] = 4
	sa := a[2:7]
	sb := sa[3:5]
	fmt.Println(a, len(a), cap(a))    //输出：[1 2 3 4 5 6 7 8 9 0] 10 10
	fmt.Println(s, len(s), cap(s))    //输出：[1 2 2 4 5 6 7 8 9 0 11 22 33] 13 20
	fmt.Println(sa, len(sa), cap(sa)) //输出：[3 4 5 6 7] 5 8
	fmt.Println(sb, len(sb), cap(sb)) //输出：[6 7] 2 5
}

package main

/*
#include <stdlib.h>
*/
import "C"
import "log"

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags)
	log.Println(C.random())
}

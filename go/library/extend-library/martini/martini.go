package main

import "github.com/go-martini/martini"

func main() {
	router := martini.Classic()
	router.Get("/", func() string {
		return "Hello, World!"
	})
	router.Run()
}

package main

import (
	"fmt"
	"net/http"
	_ "net/http/pprof"
)

func handler(res http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(res, "Hello, %s.", req.URL.Path[1:])
}

func main() {
	http.HandleFunc("/hello", handler)
	fmt.Println("Serve on :8080")
	http.ListenAndServe(":8080", nil)
}

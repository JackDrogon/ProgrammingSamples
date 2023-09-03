package main

import (
	"fmt"
	"log"

	"github.com/cockroachdb/pebble"
)

func main() {
	db, err := pebble.Open("demo", &pebble.Options{})
	if err != nil {
		log.Fatal(err)
	}

	// set key
	key := []byte("hello")
	if err := db.Set(key, []byte("world"), pebble.Sync); err != nil {
		log.Fatal(err)
	}

	// get key
	value, closer, err := db.Get(key)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("%s %s\n", key, value)

	if err := closer.Close(); err != nil {
		log.Fatal(err)
	}

	// close
	if err := db.Close(); err != nil {
		log.Fatal(err)
	}
}

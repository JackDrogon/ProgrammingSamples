package main

import (
	"fmt"
	"github.com/tidwall/buntdb"
	"log"
)

func main() {
	// Open the data.db file. It will be created if it doesn't exist.
	db, err := buntdb.Open("data.db")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	db.Update(func(tx *buntdb.Tx) error {
		tx.Set("mykey", "myvalue", nil)
		return nil
	})

	db.View(func(tx *buntdb.Tx) error {
		val, err := tx.Get("mykey")
		if err != nil {
			return err
		}
		fmt.Printf("value is %s\n", val)
		return nil
	})
}

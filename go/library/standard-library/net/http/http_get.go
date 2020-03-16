package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	response, err := http.Get("http://www.baidu.com")
	if err != nil {
		// handle error
		panic(err)
	}
	//程序在使用完回复后必须关闭回复的主体。
	defer response.Body.Close()

	body, _ := ioutil.ReadAll(response.Body)
	fmt.Println(string(body))
}

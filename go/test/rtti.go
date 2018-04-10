package main

import (
	"fmt"
	"reflect"
)

type Foo struct {
}
type Bar struct {
}

var regStruct map[string]interface{} //用于保存实例化的结构体对象

func init() {
	regStruct = make(map[string]interface{})
	regStruct["Foo"] = Foo{}
	regStruct["Bar"] = Bar{}
}
func main() {
	str := "Bar"
	if regStruct[str] != nil {
		t := reflect.ValueOf(regStruct[str]).Type()
		v := reflect.New(t).Elem()
		fmt.Println(v)
	}
}

// 但是生成的V没法赋值啊，例如，struct有个字段name，v.name会报错的

// 用下面的方式可以为字段进行赋值
// f := v.FieldByName("Name")
// if f.IsValid() && f.CanSet() && f.Kind() == reflect.String {
// f.SetString("tom")
// }

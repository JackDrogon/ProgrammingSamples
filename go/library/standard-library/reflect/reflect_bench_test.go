package main

import (
	"reflect"
	"testing"
)

type data struct {
	Hp int
}

const AssignTimes = 100000000

func TestNativeAssign(t *testing.T) {
	v := data{Hp: 2}
	for i := 0; i < AssignTimes; i++ {
		v.Hp = 3
	}
}
func TestReflectAssign(t *testing.T) {
	v := data{Hp: 2}
	vv := reflect.ValueOf(&v).Elem()
	f := vv.FieldByName("Hp")
	for i := 0; i < AssignTimes; i++ {
		f.SetInt(3)
	}
}
func TestReflectFindFieldAndAssign(t *testing.T) {
	v := data{Hp: 2}
	vv := reflect.ValueOf(&v).Elem()
	for i := 0; i < AssignTimes; i++ {
		vv.FieldByName("Hp").SetInt(3)
	}
}
func foo(v int) {
}

const CallTimes = 100000000

func TestNativeCall(t *testing.T) {
	for i := 0; i < CallTimes; i++ {
		foo(i)
	}
}
func TestReflectCall(t *testing.T) {
	v := reflect.ValueOf(foo)
	for i := 0; i < CallTimes; i++ {
		v.Call([]reflect.Value{reflect.ValueOf(2)})
	}
}

package main

// can't convert func (writerPlus) to fun (writer), 实际就是不如直接用func(writer)就行了，但是这样传递处理函数就不行了

type writer interface {
	print()
}

type writerPlus interface {
	writer
	pp()
}

func hello(w writer) {
	w.print()
}

func foo(w writerPlus) {
	w.pp()
}

type bar func(w writer)

func main() {
	var b bar
	b = foo
}

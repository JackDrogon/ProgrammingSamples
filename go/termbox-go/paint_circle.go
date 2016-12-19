package main

import (
	"math"

	"github.com/nsf/termbox-go"
)

// FIXME: 此处有分辨率问题，主要是一个点显示，它的宽和高不一样，取决于分辨率，这个该如何解决？
var rate = 16.0 / 9

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func tbPrint(x, y int, fg, bg termbox.Attribute, msg string) {
	for _, c := range msg {
		termbox.SetCell(x, y, c, fg, bg)
		x++
	}
	termbox.Flush()
}

func drawCircle() {
	w, h := termbox.Size()
	termbox.Clear(termbox.ColorDefault, termbox.ColorDefault)
	defer termbox.Flush()
	r := min(w/2, h/2) - 1
	for b := 0; b <= 2*r; b++ {
		x := int(math.Sqrt(float64(r*r)-math.Abs(float64(b-r))*math.Abs(float64(b-r))) * rate)
		tbPrint(w/2-x, h/2-r+b, termbox.ColorRed, termbox.ColorDefault, ".")
		tbPrint(w/2+x, h/2-r+b, termbox.ColorRed, termbox.ColorDefault, ".")
	}
}

func main() {
	err := termbox.Init()
	if err != nil {
		panic(err)
	}
	defer termbox.Close()

	drawCircle()
	termbox.PollEvent()
}

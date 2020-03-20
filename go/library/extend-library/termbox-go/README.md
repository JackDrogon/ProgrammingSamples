## About termbox-go

这是一个golang的tui的库。


### How to
```go
termbox.Init()
defer termbox.Close()
```
这样能够不干扰现有terminal的屏幕，然后新创建一个画布，程序结束后，自动回到之前的界面

termbox.SetCell(x, y, c, fg, bg) // 绘制一个字符

注意刷新，一般刷新了才能显示出来，我还不怎么清楚它的刷新时机，是不是有自动刷新的机制

一般的封装
```go
func printMsg(x, y int, fg, bg termbox.Attribute, msg string) {
	for _, c := range msg {
		termbox.SetCell(x, y, c, fg, bg)
		x++
	}
}
```

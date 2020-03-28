package main

type emptyCtx int

func (*emptyCtx) Done() <-chan struct{} {
	return nil
}

func main() {
	var ch emptyCtx
	<-ch.Done()
}

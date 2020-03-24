package main

import (
	"container/list"
	"io"
	"log"
	"net"
	"os"
	"sync"
)

const (
	socksServer = "127.0.0.1:1080"
	bindAddr    = ":2011"
	bufferSize  = 4096
	maxConn     = 0x10000
	xor         = 0x64
)

var socksAddr *net.TCPAddr

func init() {
	var err error
	socksAddr, err = net.ResolveTCPAddr("tcp", socksServer)

	if err != nil {
		log.Fatal(err)
	}
}

type tunnel struct {
	id int
	*list.Element
	send  chan []byte
	reply io.Writer
}

type bundle struct {
	t [maxConn]tunnel
	*list.List
	*xsocket
}

type xsocket struct {
	net.Conn
	*sync.Mutex
}

func (s xsocket) Read(data []byte) (n int, err os.Error) {
	n, err = io.ReadFull(s.Conn, data)
	if n > 0 {
		for i := 0; i < n; i++ {
			data[i] = data[i] ^ xor
		}
	}

	return
}

func (s xsocket) Write(data []byte) (n int, err os.Error) {
	s.Lock()
	defer s.Unlock()
	log.Println("Send", len(data))
	for i := 0; i < len(data); i++ {
		data[i] = data[i] ^ xor
	}
	x := 0
	all := len(data)

	for all > 0 {
		n, err = s.Conn.Write(data)
		if err != nil {
			n += x
			return
		}
		all -= n
		x += n
		data = data[n:]
	}

	return all, err
}

func (t *tunnel) processBack(c net.Conn) {
	c.SetReadTimeout(1e7)
	var buf [bufferSize]byte
	for {
		n, err := c.Read(buf[4:])
		if n > 0 {
			t.sendBack(buf[:4+n])
		}
		e, ok := err.(net.Error)
		if !(ok && e.Timeout()) && err != nil {
			log.Println(n, err)
			return
		}
	}
}

func (t *tunnel) sendClose() {
	buf := [4]byte{
		byte(t.id >> 8),
		byte(t.id & 0xff),
		0,
		0,
	}
	t.reply.Write(buf[:])
}

func (t *tunnel) sendBack(buf []byte) {
	buf[0] = byte(t.id >> 8)
	buf[1] = byte(t.id & 0xff)
	length := len(buf) - 4
	buf[2] = byte(length >> 8)
	buf[3] = byte(length & 0xff)
	t.reply.Write(buf)
}

func connectSocks() net.Conn {
	c, err := net.DialTCP("tcp", nil, socksAddr)
	if err != nil {
		return nil
	}
	log.Println(c.RemoteAddr())
	return c
}

func (t *tunnel) process() {
	c := connectSocks()
	if c == nil {
		t.sendClose()
	} else {
		go t.processBack(c)
	}
	send := t.send

	for {
		buf, ok := <-send
		if !ok {
			if c != nil {
				c.Close()
			}
			return
		}
		if c != nil {
			n, err := c.Write(buf)
			if err != nil {
				log.Println("tunnel", n, err)
				t.sendClose()
			}
		}
	}
}

func (t *tunnel) open(reply io.Writer) {
	t.send = make(chan []byte)
	t.reply = reply
	go t.process()
}

func (t *tunnel) close() {
	close(t.send)
}

func newBundle(c net.Conn) *bundle {
	b := new(bundle)
	b.List = list.New()
	for i := 0; i < maxConn; i++ {
		t := &b.t[i]
		t.id = i
		t.Element = b.PushBack(t)
	}
	b.xsocket = &xsocket{c, new(sync.Mutex)}
	return b
}

func (b *bundle) free(id int) {
	t := &b.t[id]
	if t.Element == nil {
		t.Element = b.PushBack(t)
		t.close()
	}
}

func (b *bundle) get(id int) *tunnel {
	t := &b.t[id]
	if t.Element != nil {
		b.Remove(t.Element)
		t.Element = nil
		t.open(b.xsocket)
	}
	return t
}

func servTunnel(c net.Conn) {
	b := newBundle(c)
	var header [4]byte
	for {
		_, err := b.Read(header[:])
		if err != nil {
			log.Fatal(err)
		}
		id := int(header[0])<<8 | int(header[1])
		length := int(header[2])<<8 | int(header[3])
		log.Println("Recv", id, length)
		if length == 0 {
			b.free(id)
		} else {
			t := b.get(id)
			buf := make([]byte, length)
			_, err := b.Read(buf)
			if err != nil {
				log.Fatal(err)
			}
			t.send <- buf
		}
	}
}

func start(addr string) {
	a, err := net.ResolveTCPAddr("tcp", addr)
	if err != nil {
		log.Fatal(err)
	}
	l, err2 := net.ListenTCP("tcp", a)
	if err2 != nil {
		log.Fatal(err2)
	}
	log.Printf("xtunneld bind %s", a)
	c, err3 := l.Accept()
	if err3 != nil {
		log.Fatal(err3)
	}
	l.Close()
	servTunnel(c)
}

func main() {
	start(bindAddr)
}

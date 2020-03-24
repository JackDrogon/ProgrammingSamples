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
	bindAddr   = "127.0.0.1:1080"
	serverAddr = "www.yourvps.com:2011"
	bufferSize = 4096
	maxConn    = 0x10000
	xor        = 0x64
)

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
	sync.Mutex
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
		if all != n {
			log.Println("Write only", n, all)
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

func (t *tunnel) process(c net.Conn, b *bundle) {
	go t.processBack(c)
	send := t.send

	for {
		buf, ok := <-send
		if !ok {
			c.Close()
			return
		}
		n, err := c.Write(buf)
		if err != nil {
			b.free(t.id)
		} else if n != len(buf) {
			log.Println("Write", n, len(buf))
		}
	}
}

func (t *tunnel) open(b *bundle, c net.Conn) {
	t.send = make(chan []byte)
	t.reply = b.xsocket
	go t.process(c, b)
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

func (b *bundle) alloc(c net.Conn) *tunnel {
	b.Lock()
	defer b.Unlock()
	f := b.Front()
	if f == nil {
		return nil
	}
	t := b.Remove(f).(*tunnel)
	t.Element = nil
	t.open(b, c)
	return t
}

func (b *bundle) free(id int) {
	b.Lock()
	defer b.Unlock()
	t := &b.t[id]
	if t.Element == nil {
		t.sendClose()
		t.Element = b.PushBack(t)
		t.close()
	}
}

func (b *bundle) get(id int) *tunnel {
	b.Lock()
	defer b.Unlock()
	t := &b.t[id]
	if t.Element != nil {
		return nil
	}
	return t
}

func servSocks(b *bundle) {
	a, err := net.ResolveTCPAddr("tcp", bindAddr)
	if err != nil {
		log.Fatal(err)
	}
	l, err2 := net.ListenTCP("tcp", a)
	if err2 != nil {
		log.Fatal(err2)
	}
	log.Printf("xtunnelc bind %s", a)
	for {
		c, err := l.Accept()
		if err != nil {
			log.Fatal(err)
		}
		log.Println(c.RemoteAddr())
		b.alloc(c)
	}
}

func mainServer(c net.Conn) {
	b := newBundle(c)
	go servSocks(b)
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
			n, err := b.Read(buf)
			if err != nil {
				log.Fatal(err)
			} else if n != len(buf) {
				log.Println("Read", n, len(buf))
			}
			if t != nil {
				t.send <- buf
			}
		}
	}
}

func start(addr string) {
	a, err := net.ResolveTCPAddr("tcp", addr)
	if err != nil {
		log.Fatal(err)
	}
	c, err2 := net.DialTCP("tcp", nil, a)
	if err2 != nil {
		log.Fatal(err2)
	}
	log.Printf("xtunnelc connect %s", a)
	mainServer(c)
}

func main() {
	start(serverAddr)
}

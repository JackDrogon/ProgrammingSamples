package client

import (
	"message"
	"net"
)

type Client struct {
	conn     net.Conn
	id       int
	room     *message.Room
	msg_chan *message.Message
}

func NewClient(conn net.Conn, id int, room *message.Room) *Client {
	client := &Client{
		conn: conn,
		id:   id,
		room: *message.Room,
	}
	room.Join(client)
	return client
}

func (client *Client) Run() {
	go client.read()
	go client.write()
}

func (client *Client) Deliver(msg *message.Message) {
	client.msg_chan <- msg
}

func (client *Client) read() {
}

func (client *Client) write() {
	// TODO select
	for msg := range client.msg_chan {
		nil
	}
}

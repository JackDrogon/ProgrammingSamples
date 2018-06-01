package message

import (
	"client"
	"sync"
)

type Room struct {
	mu           sync.Mutex
	participants map[*client.Client]bool
}

func NewRoom() *Room {
	return &Room{
		participants: make(map[*client.Client]bool),
	}
}

func (room *Room) Join(client *client.Client) {
	room.mu.Lock()
	room.participants[client] = true
	room.mu.Unlock()
}

func (room *Room) Leave(client *client.Client) {
	room.mu.Lock()
	delete(room.participants, client)
	room.mu.Unlock()
}

func (room *Room) Deliver(msg *Message) {
	room.mu.Lock()
	for client, _ := range room.participants {
		client.Deliver(msg)
	}
	room.mu.Unlock()
}

package message

import "strings"

const (
	HEADER_LENGTH   = 4
	MAX_BODY_LENGTH = 512
)

type Message struct {
	body_length int
	data_       strings.Builder
}

func (msg *Message) Length() int {
	return HEADER_LENGTH + msg.body_length
}

func (msg *Message) BodyLength() int {
	return msg.body_length
}

func (msg *Message) SetBodyLength(body_length int) {
	msg.body_length = body_length
	if body_length > MAX_BODY_LENGTH {
		msg.body_length = MAX_BODY_LENGTH
	}
}

func (msg *Message) DecodeHeader() bool {
	return false
}

func (msg *Message) EncodeHeader() {
}

#pragma once

#include <cstdio>
#include <cstdlib>
#include <cstring>

class ChatMessage
{
public:
	enum { kHeaderLength = 4 };
	enum { kMaxBodyLength = 512 };

	ChatMessage() : body_length_(0) {}

	const char *data() const { return data_; }
	char *data() { return data_; }

	std::size_t length() const { return kHeaderLength + body_length_; }

	const char *body() const { return data_ + kHeaderLength; }
	char *body() { return data_ + kHeaderLength; }

	std::size_t body_length() const { return body_length_; }

	void body_length(std::size_t new_length)
	{
		body_length_ = new_length;
		if (body_length_ > kMaxBodyLength) {
			body_length_ = kMaxBodyLength;
		}
	}

	bool DecodeHeader()
	{
		char header[kHeaderLength + 1] = "";
		std::strncat(header, data_, kHeaderLength);
		body_length_ = std::atoi(header);
		if (body_length_ > kMaxBodyLength) {
			body_length_ = 0;
			return false;
		}
		return true;
	}

	void EecodeHeader()
	{
		char header[kHeaderLength + 1] = "";
		std::sprintf(header, "%4d", static_cast<int>(body_length_));
		std::memcpy(data_, header, kHeaderLength);
	}

private:
	char data_[kHeaderLength + kMaxBodyLength];
	std::size_t body_length_;
};

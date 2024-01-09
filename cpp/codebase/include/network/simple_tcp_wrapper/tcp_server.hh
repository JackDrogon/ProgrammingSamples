#pragma once

#include <string>

#include <cstdint>
#include <cstring>

#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

#include "tcp_client.hh"

namespace archimedes
{

// TODO use hash for options
class TCPServer
{
public:
	TCPServer(std::string address, const uint16_t port) : port_(port)
	{
		fd_ = socket(AF_INET, SOCK_STREAM, 0);
		memset(&address_, 0, sizeof(address_));
		address_.sin_family = AF_INET;
		address_.sin_addr.s_addr = htonl(INADDR_ANY);
		address_.sin_port = htons(port);

		bind();
		listen();
	}

	TCPServer(const short port) : TCPServer("127.0.0.1", port) {}

	virtual ~TCPServer() = default;

	TCPServer(const TCPServer &) = delete;
	const TCPServer &operator=(const TCPServer &) = delete;

	auto Accept() -> TCPClient
	{
		socklen_t client_len;
		struct sockaddr_in client_address;

		if (int fd;
		    (fd = ::accept(fd_, (struct sockaddr *)&client_address,
				   &client_len)) > 0) {
			return fd;
			// return TCPClient(fd); nvo, rnvo
		}

		throw std::exception();
	}

private:
	void bind()
	{
		::bind(fd_, (struct sockaddr *)&address_, sizeof(address_));
	}

	void listen(int backlog = 5) { ::listen(fd_, backlog); }

private:
	struct sockaddr_in address_;
	uint16_t port_;
	int fd_{-1};
};

} // namespace archimedes

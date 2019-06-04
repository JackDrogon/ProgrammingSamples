#pragma once

#include <string>

#include <unistd.h>

namespace archimedes {

// TODO: use socket
// TODO: Add stream support
class TCPClient final{
public:
	TCPClient(int fd) noexcept : fd_(fd) {}
	~TCPClient() { if (fd_ > 0) {::close(fd_);} }

	TCPClient(const TCPClient&) = delete;
	TCPClient &operator=(const TCPClient&) = delete;

	TCPClient(TCPClient &&tcp_client): fd_(tcp_client.fd_) { tcp_client.fd_ = -1; }
	TCPClient &operator=(TCPClient &&tcp_client)
	{
		fd_ = tcp_client.fd_;
		tcp_client.fd_ = -1;
		return *this;
	}

	bool IsValid() { return fd_ >= 0; }

	std::string Read(size_t size = 1024)
	{
		char data[size];
		size = ::read(fd_, data, size);
		return std::string(data, size >= 0 ? size: 0);
	}

	void Write(const std::string &data)
	{
		::write(fd_, data.data(), data.size());
	}

	void Close()
	{
		::close(fd_);
		fd_ = -1;
	}

	int RawFd() const { return fd_; }
private:
	int fd_{-1};
};

} // namespace archimedes

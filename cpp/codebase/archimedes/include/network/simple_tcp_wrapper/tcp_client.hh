#pragma once

#include <string>

#include <unistd.h>

namespace archimedes
{

// TODO: use socket
// TODO: Add stream support
class TCPClient final
{
public:
	// Disallow copy
	TCPClient(const TCPClient &) = delete;
	TCPClient &operator=(const TCPClient &) = delete;

	TCPClient() noexcept = default;
	TCPClient(int fd) noexcept : fd_(fd) {}

	~TCPClient() noexcept { Close(); }

	TCPClient(TCPClient &&tcp_client) noexcept : fd_(tcp_client.fd_)
	{
		tcp_client.fd_ = -1;
	}
	TCPClient &operator=(TCPClient &&tcp_client) noexcept
	{
		fd_ = tcp_client.fd_;
		tcp_client.fd_ = -1;

		return *this;
	}

	auto NativeHandle() const noexcept -> int { return fd_; }

	auto IsValid() const noexcept { return fd_ >= 0; }

	auto Read(size_t size = 1024) -> std::string
	{
		char data[size];
		size = ::read(fd_, data, size);
		return std::string(data, size >= 0 ? size : 0);
	}

	auto Write(const std::string &data) noexcept -> size_t
	{
		return ::write(fd_, data.data(), data.size());
	}

	void Close() noexcept
	{
		if (fd_ < 0) {
			return;
		}

		::close(fd_);
		fd_ = -1;
	}

private:
	int fd_{-1};
};

} // namespace archimedes

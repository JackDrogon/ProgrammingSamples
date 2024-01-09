#include <iostream>
using namespace std;

#include "tcp_server.hh"

int main(int argc, char *argv[])
{
	unsigned short port = 5001;
	if (argc >= 2) {
		port = static_cast<unsigned short>(atoi(argv[1]));
	}

	archimedes::TCPServer tcp_server(port);
	cout << "Run server on 127.0.0.1:" << port << "." << endl;

	while (true) {
		auto client = tcp_server.Accept();

		client.Write("Hello, World!\n");
		client.Close();
	}

	return 0;
}

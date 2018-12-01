#include <iostream>
#include "tcp_server.hh"

using namespace std;

int main()
{
	archimedes::TCPServer tcp_server(5001);
	cout << "Run server on 127.0.0.1:5001!" << endl;

	while (true) {
		auto client = tcp_server.Accept();

		client.Write("Hello, World!\n");
		client.Close();
	}
	
	return 0;
}

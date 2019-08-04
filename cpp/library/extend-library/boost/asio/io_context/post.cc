#include <functional>
#include <iostream>
using namespace std;

#include <boost/asio.hpp>
using namespace boost::asio;

int main(int argc, char *argv[])
{
	io_context io_context(1);

	io_context.post([&] {
		for (int i = 0; i < 10; i += 2) {
			io_context.post([=] {
				std::cout << "lambda called, i= " << i
					  << std::endl;
			});
		}
	});
	io_context.run();

	return 0;
}

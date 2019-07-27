#include <boost/asio.hpp>

int main()
{
	boost::asio::io_context io_context(1);
	io_context.run();

	return 0;
}

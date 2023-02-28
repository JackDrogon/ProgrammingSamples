#include <boost/log/trivial.hpp>

int main()
{
	BOOST_LOG_TRIVIAL(info) << "This is an informational severity message";

	return 0;
}

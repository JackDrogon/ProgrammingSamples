#include <boost/filesystem.hpp>
#include <iostream>
#include <cassert>

namespace fs = boost::filesystem;

int main()
{
	fs::path p1;
	assert(p1.empty());
	p1 = "/"
	return 0;
}

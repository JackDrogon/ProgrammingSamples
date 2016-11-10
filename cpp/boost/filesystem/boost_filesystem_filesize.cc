#include <iostream>
#include <boost/filesystem.hpp>
using namespace std;
namespace fs = boost::filesystem;

int main(int argc, char *argv[])
{
	if (argc < 2) {
		cout << "Usage: " << argv[0] << " path" << endl;
		return 1;
	}
	cout << argv[1] << " " << fs::file_size(argv[1]) << endl;
	return 0;
}

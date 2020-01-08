#include <fstream>
#include <iostream>
#include <filesystem>
using namespace std;
namespace fs = filesystem;

int main()
{
	fs::create_directories("sandbox/a/b");
	std::ofstream("sandbox/a/filea.txt");
	std::ofstream("sandbox/file1.txt");
	std::ofstream("sandbox/file2.txt");

	for (auto &path : fs::directory_iterator("sandbox")) {
		std::cout << path.path() << endl;
	}

	fs::remove_all("sandbox");

	return 0;
}

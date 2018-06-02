#include <iostream>
#include <filesystem>

namespace fs = std::filesystem;

int main(int, char *argv[])
{
	fs::path p = argv[0];
	std::cout << "Current path is " << fs::current_path() << '\n'
		  << "Absolute path for " << p << " is " << fs::absolute(p)
		  << '\n';
	// actual location: "C:\Program Files (x86)\Microsoft Visual
	// Studio 12.0\VC\bin\cl.exe"
}

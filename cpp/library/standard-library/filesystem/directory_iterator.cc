#include <algorithm>
#include <filesystem>
#include <iostream>

#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
	// open a.txt
	int fd = open("a.txt", O_RDONLY);
	if (fd < 0) {
		std::cerr << "failed to open a.txt" << std::endl;
		return 0;
	}

	std::error_code ec;
	std::filesystem::directory_iterator dict_iter("/proc/self/fd/", ec);
	if (ec) {
		std::cerr << "failed to count fd: " << ec.message();
		return 0;
	}

	int64_t count = std::count_if(
	    dict_iter, std::filesystem::end(dict_iter), [](const auto &entry) {
		    std::error_code dec;
		    std::cout << entry.path() << std::endl;
		    return entry.is_regular_file(dec) && !dec;
	    });
	std::cout << count << std::endl;
	close(fd);

	return 0;
}

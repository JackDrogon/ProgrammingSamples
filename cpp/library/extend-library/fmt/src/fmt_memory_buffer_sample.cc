#include <iostream>
#include <iterator>

#include <fmt/format.h>

using namespace std;

int main()
{
	fmt::memory_buffer buffer;
	// TODO need '\0'
	// fmt::format_to(buffer, "Look, a {} string", 'C');
	fmt::format_to(std::back_inserter(buffer), "For a moment, {} happened.",
		       "nothing");

	cout << fmt::to_string(buffer) << endl;
	cout << buffer.data() << endl; // '\0'
	cout << buffer.size() << endl;

	return 0;
}

#include <iostream>
#include <memory_resource>
#include <vector>
using namespace std;

int main() {
	char buffer[64] = {};
	fill_n(begin(buffer), size(buffer) - 1, '_');
	cout << buffer << '\n';

	pmr::monotonic_buffer_resource pool{data(buffer), size(buffer)};

	pmr::vector<char> vec{&pool};
	for (char ch = 'a'; ch <= 'z'; ++ch) {
		vec.push_back(ch);
	}

	cout << buffer << '\n';

	vec.clear();
	cout << buffer << '\n';
}

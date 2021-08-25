#include <array>
#include <iostream>
using namespace std;

#include <absl/debugging/stacktrace.h>

void bar()
{
	void *result[10];
	// std::array<void *, 10> result;
	int sizes[10];
	int depth = absl::GetStackFrames(result, sizes, 10, 1);

	cout << depth << endl;
	for (auto i = 0; i < depth; ++i) {
		cout << result[i] << endl;
	}
}

void foo() { bar(); }
int main() { foo(); }

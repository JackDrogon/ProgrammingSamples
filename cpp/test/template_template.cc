#include <functional>
#include <vector>
using namespace std;

template <typename T, template <class, class Alloc> typename U>
U<T, Alloc> Filter(const U<T, Alloc> &range, function<bool(const T &)> f)
{
	return range;
}

// template <template <class> class U, typename T> T Pick(const U<T> &range) {}

int main()
{
	vector<int> v = {1, 2, 3};
	Filter(v, [](const int &) { return true; });
	return 0;
}

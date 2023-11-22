// define cpp range concepts

#include <vector>

template <typename T>
concept Range = requires(T t) {
	std::begin(t);
	std::end(t);
};

int main()
{
	static_assert(Range<std::vector<int>>);
	return 0;
}

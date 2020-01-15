#include <type_traits>

template <typename T> concept floating_point = std::is_floating_point_v<T>;

auto add(const floating_point auto v1, const floating_point auto v2)
{
	return v1 + v2;
}

int main()
{
	add(1.2, 2.3f);
	return 0;
}

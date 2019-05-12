#include <iostream>
#include <type_traits>

class A {};

int main()
{
	A a;
	std::cout << std::boolalpha;
	std::cout << std::is_array<A>::value << '\n';
	// template <class _Tp>
	// struct _LIBCPP_TEMPLATE_VIS is_array<_Tp[]> : public true_type {};
	// std::cout << std::is_array(a)::value << '\n';
	std::cout << std::is_array<A[]>::value << '\n';
	std::cout << std::is_array<A[3]>::value << '\n';
	std::cout << std::is_array<float>::value << '\n';
	std::cout << std::is_array<int>::value << '\n';
	std::cout << std::is_array<int[]>::value << '\n';
	std::cout << std::is_array<int[3]>::value << '\n';
}

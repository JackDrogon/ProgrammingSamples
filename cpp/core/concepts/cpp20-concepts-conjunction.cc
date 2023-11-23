#include <type_traits>

template <class T>
concept Integral = std::is_integral<T>::value;

template <class T>
concept SignedIntegral = Integral<T> && std::is_signed<T>::value;

template <class T>
concept UnsignedIntegral = Integral<T> && !SignedIntegral<T>;

int main()
{
	static_assert(Integral<int>);
	static_assert(Integral<int>);
	static_assert(UnsignedIntegral<unsigned int>);
	return 0;
}

#include <iostream>
#include <string>
using namespace std;

template <std::size_t I, typename Head, typename... Tail>
struct type_list_index_1 {
	using type = typename type_list_index_1<I - 1, Tail...>::type;
};

template <typename Head> struct type_list_index_1<0, Head> {
	using type = Head;
};

template <std::size_t I, typename... Ts> struct type_list_index {
	static_assert(I < sizeof...(Ts), "index out of range");

	using type = typename type_list_index_1<I, Ts...>::type;
};

template <std::size_t I, typename... Ts>
using type_list_index_t = typename type_list_index<I, Ts...>::type;

int main() {
	type_list_index_t<1, int, std::string> x = "hello";
	cout << x << endl;

	// type_list_index<10, int, std::string>::type x1; fatal

	return 0;
}

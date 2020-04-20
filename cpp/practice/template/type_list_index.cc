#include <iostream>
#include <string>
using namespace std;

template <typename... Ts> struct type_list {
};

template <std::size_t I, typename Head, typename... Tail>
struct type_list_index_1 {
	using type = typename type_list_index_1<I - 1, Tail...>::type;
};

template <typename Head, typename... Tail>
struct type_list_index_1<0, Head, Tail...> {
	using type = Head;
};

template <std::size_t I, class T> struct type_list_index; /* undefined */
template <std::size_t I, typename... Ts>
struct type_list_index<I, type_list<Ts...>> {
	static_assert(I < sizeof...(Ts), "index out of range");

	using type = typename type_list_index_1<I, Ts...>::type;
};

template <std::size_t I, typename T>
using type_list_index_t = typename type_list_index<I, T>::type;

int main()
{
	using T = type_list<int, std::string>;

	type_list_index_t<0, T> x0 = 10;
	cout << x0 << endl;

	type_list_index_t<1, T> x1 = "hello";
	cout << x1 << endl;

	// type_list_index<10, int, std::string>::type y1; fatal

	return 0;
}

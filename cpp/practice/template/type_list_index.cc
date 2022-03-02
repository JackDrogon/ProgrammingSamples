#include <iostream>
#include <string>
using namespace std;

template <typename... Ts> struct type_list {
};

template <std::size_t index, typename Head, typename... Tail>
struct type_list_index_1 {
	using type = typename type_list_index_1<index - 1, Tail...>::type;
};
template <typename Head, typename... Tail>
struct type_list_index_1<0, Head, Tail...> {
	using type = Head;
};

/// 定义一般类型
template <std::size_t index, class T> struct type_list_index; // undefined
/// 这里是特化，需要定义一般的类型
template <std::size_t index, typename... Ts>
struct type_list_index<index, type_list<Ts...>> {
	static_assert(index < sizeof...(Ts), "index out of range");

	using type = typename type_list_index_1<index, Ts...>::type;
};

template <std::size_t index, typename T>
using type_list_index_t = typename type_list_index<index, T>::type;

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

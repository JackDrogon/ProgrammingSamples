#include <iomanip>
#include <iostream>
#include <string>
#include <type_traits>
#include <variant>
#include <vector>

template <class T> struct always_false : std::false_type {
};

using var_t = std::variant<int, long, double, std::string>;

template <class... Ts> struct overloaded : Ts... {
	using Ts::operator()...;
};
template <class... Ts> overloaded(Ts...)->overloaded<Ts...>;

int main()
{
	std::vector<var_t> vec = {10, 15l, 1.5, "hello"};
	for (auto &&v : vec) {
		// void 观览器，仅为其副效应调用
		std::visit([](auto &&arg) { std::cout << arg; }, v);

		// 返回值的观览器，返回另一 variant 的常见模式
		var_t w = std::visit(
		    [](auto &&arg) -> var_t { return arg + arg; }, v);

		std::cout << ". After doubling, variant holds ";
		// 类型匹配观览器：亦能为带 4 个重载的 operator() 的类
		std::visit(
		    [](auto &&arg) {
			    using T = std::decay_t<decltype(arg)>;
			    if constexpr (std::is_same_v<T, int>)
				    std::cout << "int with value " << arg
					      << '\n';
			    else if constexpr (std::is_same_v<T, long>)
				    std::cout << "long with value " << arg
					      << '\n';
			    else if constexpr (std::is_same_v<T, double>)
				    std::cout << "double with value " << arg
					      << '\n';
			    else if constexpr (std::is_same_v<T, std::string>)
				    std::cout << "std::string with value "
					      << std::quoted(arg) << '\n';
			    else
				    static_assert(always_false<T>::value,
						  "non-exhaustive visitor!");
		    },
		    w);
	}

	for (auto &&v : vec) {
		std::visit(
		    overloaded{
			[](auto arg) { std::cout << arg << ' '; },
			[](double arg) {
				std::cout << std::fixed << arg << ' ';
			},
			[](const std::string &arg) {
				std::cout << std::quoted(arg) << ' ';
			},
		    },
		    v);
	}
}

#include <cassert>
#include <tuple>
#include <type_traits>

template <class T, class... TArgs>
decltype(void(T{std::declval<TArgs>()...}), std::true_type{})
test_is_braces_constructible(int);

template <class, class...> std::false_type test_is_braces_constructible(...);

template <class T, class... TArgs>
using is_braces_constructible =
    decltype(test_is_braces_constructible<T, TArgs...>(0));

struct any_type {
	template <class T> constexpr operator T(); // non explicit
};

template<class T>
auto to_tuple(T&& object) noexcept {
	using type = std::decay_t<T>;
	if constexpr (is_braces_constructible<type, any_type, any_type,
					      any_type, any_type>{}) {
		auto &&[p1, p2, p3, p4] = object;
		return std::make_tuple(p1, p2, p3, p4);
	} else if constexpr (is_braces_constructible<type, any_type, any_type,
						     any_type>{}) {
		auto &&[p1, p2, p3] = object;
		return std::make_tuple(p1, p2, p3);
	} else if constexpr (is_braces_constructible<type, any_type,
						     any_type>{}) {
		auto &&[p1, p2] = object;
		return std::make_tuple(p1, p2);
	} else if constexpr (is_braces_constructible<type, any_type>{}) {
		auto &&[p1] = object;
		return std::make_tuple(p1);
	} else {
		return std::make_tuple();
	}
}

int main()
{
	{
		struct s {
			int p1;
			double p2;
		};

		auto t = to_tuple(s{1, 2.0});
		static_assert(
		    std::is_same<std::tuple<int, double>, decltype(t)>{});
		assert(1 == std::get<0>(t));
		assert(2.0 == std::get<1>(t));
	}

	{
		struct s {
			struct nested {
			} p1;
			int p2;
			int p3;
			s *p4;
		};

		auto t = to_tuple(s{s::nested{}, 42, 87, nullptr});
		static_assert(std::is_same<std::tuple<s::nested, int, int, s *>,
					   decltype(t)>{});
		assert(42 == std::get<1>(t));
		assert(87 == std::get<2>(t));
		assert(nullptr == std::get<3>(t));
	}
}

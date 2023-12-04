#include <compare>
#include <iostream>

struct Rational {
	int num;
	int den; // > 0

	// Although the comparison X <=> Y will work, a direct call
	// to std::compare_three_way{}(X,Y) requires the operator==
	// be defined, to satisfy the std::three_way_comparable_with.
	constexpr bool operator==(Rational const &) const = default;
};

constexpr std::weak_ordering operator<=>(const Rational &lhs,
					 const Rational &rhs)
{
	return lhs.num * rhs.den <=> rhs.num * lhs.den;
}

void print(std::weak_ordering value)
{
	if (value < 0) {
		std::cout << "less\n";
	} else if (value > 0) {
		std::cout << "greater\n";
	} else {
		std::cout << "equal\n";
	}
}

int main()
{
	Rational a{6, 5};
	Rational b{8, 7};
	print(a <=> b);
	print(std::compare_three_way{}(a, b));
}

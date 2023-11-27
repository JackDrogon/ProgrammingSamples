#include <iomanip>
#include <iostream>
#include <ranges>
#include <utility>
#include <vector>

int main()
{
	// MeV/c²
	const std::vector<std::pair<std::string, double>> quark_mass{
	    {"up", 2.3},     {"down", 4.8},    {"charm", 1275},
	    {"strange", 95}, {"top", 173'210}, {"bottom", 4'180},
	};

	std::cout << "quark name:  │ ";
	for (auto &&name : std::views::keys(quark_mass)) {
		std::cout << std::setw(9) << name << " │ ";
	}
	std::cout << "\n";

	std::cout << "mass MeV/c²: │ ";
	for (auto mass : std::views::values(quark_mass)) {
		std::cout << std::setw(9) << mass << " │ ";
	}
	std::cout << '\n';

	return 0;
}

#include <algorithm>
#include <array>
#include <functional>
#include <iomanip>
#include <iostream>
namespace ranges = std::ranges;

void print(auto comment, auto const &seq, char term = ' ')
{
	for (std::cout << comment << '\n'; auto const &elem : seq) {
		std::cout << elem << term;
	}
	std::cout << '\n';
}

struct Particle {
	std::string name;
	double mass; // MeV

	template <class OStream>
	friend OStream &operator<<(OStream &os, Particle const &p)
	{
		return os << std::left << std::setw(8) << p.name << " : "
			  << p.mass << ' ';
	}
};

int main()
{
	std::array s{5, 7, 4, 2, 8, 6, 1, 9, 0, 3};

	// Ex1: Sort using the default operator<
	ranges::sort(s);
	print("Sort using the default operator<", s);

	// Ex2: Sort using a standard library compare function object
	ranges::sort(s, ranges::greater());
	print("Sort using a standard library compare function object", s);

	// Ex3: Sort using a custom function object
	struct {
		bool operator()(int a, int b) const { return a < b; }
	} customLess;
	ranges::sort(s.begin(), s.end(), customLess);
	print("Sort using a custom function object", s);

	// Ex4: Sort using a lambda expression
	ranges::sort(s, [](int a, int b) { return a > b; });
	print("Sort using a lambda expression", s);

	// Ex5: Sort using a projection
	Particle particles[]{{"Electron", 0.511}, {"Muon", 105.66},
			     {"Tau", 1776.86},	  {"Positron", 0.511},
			     {"Proton", 938.27},  {"Neutron", 939.57}};
	ranges::sort(particles, {}, &Particle::name);
	print("\nSort by name using a projection", particles, '\n');
	ranges::sort(particles, {}, &Particle::mass);
	print("Sort by mass using a projection", particles, '\n');
}

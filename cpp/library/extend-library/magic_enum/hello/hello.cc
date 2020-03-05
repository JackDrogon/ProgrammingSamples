#include <iostream>
#include "magic_enum.hpp"
using namespace std;

enum class Color { RED = 2, BLUE = 4, GREEN = 8 };

int main()
{
	Color color = Color::RED;
	auto color_name = magic_enum::enum_name(color);

	cout << color_name << endl;
	return 0;
}

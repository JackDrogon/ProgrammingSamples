#include <iostream>
#include <string_view>
using namespace std;

enum class rgba_color_channel { red, green, blue, alpha };

inline string_view to_string(rgba_color_channel channel)
{
	switch (channel) {
	case rgba_color_channel::red:
		return "red";
	case rgba_color_channel::green:
		return "green";
	case rgba_color_channel::blue:
		return "blue";
	case rgba_color_channel::alpha:
		return "alpha";
	}
}

int main()
{
	rgba_color_channel ch{rgba_color_channel::red};

	cout << "Color: " << to_string(ch) << endl;

	return 0;
}

#include <iostream>
using namespace std;

#include <pprint.hpp>

enum class Color { RED = 2, BLUE = 4, GREEN = 8 };

pprint::PrettyPrinter printer;
namespace
{
void print_fdt()
{
	printer.print(5);
	printer.print(3.14f);
	printer.print(2.718);
	printer.print(true);
	printer.print('x');
	printer.print("Hello, 世界");
	printer.print(nullptr);
}

void print_list() {}

void print_array()
{
	using Mat3x3 = std::array<std::array<int, 3>, 3>;
	Mat3x3 matrix;
	matrix[0] = {1, 2, 3};
	matrix[1] = {4, 5, 6};
	matrix[2] = {7, 8, 9};
	printer.print("Matrix =", matrix);
}
} // namespace

int main()
{
	print_fdt();
	print_array();

	return 0;
}

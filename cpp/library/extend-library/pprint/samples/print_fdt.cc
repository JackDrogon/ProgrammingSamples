#include <pprint.hpp>

namespace
{
void print_fdt()
{
	pprint::PrettyPrinter printer;

	// printer.print(void);
	printer.print(nullptr);
	printer.print(5);
	printer.print(3.14f);
	printer.print(2.718);
	printer.print(true);
	printer.print('x');
	printer.print("Hello, 世界");
}
} // namespace

int main()
{
	print_fdt();

	return 0;
}

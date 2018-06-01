#include <iostream>
#include <string>
#include <variant>
using namespace std;

int main()
{
	// holds_alternative 总会返回一个true
	std::variant<int, string> v = "";
	std::cout << std::boolalpha << "variant holds int? "
		  << std::holds_alternative<int>(v) << '\n'
		  << "variant holds string? "
		  << std::holds_alternative<std::string>(v) << '\n';
}

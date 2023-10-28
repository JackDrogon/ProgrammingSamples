#include <cassert>
#include <string>
#include <type_traits>
#include <utility>

int main()
{
	std::string mutable_string = "Hello World!";
	auto &&const_ref = std::as_const(mutable_string);

	//  mutable_string.clear(); // OK
	//  const_ref.clear(); // 错误： 'const_ref' 有 'const' 限定，但 'clear'
	//  不标记为 const

	assert(&const_ref == &mutable_string);
	assert(&std::as_const(mutable_string) == &mutable_string);

	using ExprType =
	    std::remove_reference_t<decltype(std::as_const(mutable_string))>;

	static_assert(
	    std::is_same_v<std::remove_const_t<ExprType>, std::string>,
	    "ExprType should be some kind of string.");
	static_assert(!std::is_same_v<ExprType, std::string>,
		      "ExprType shouldn't be a mutable string.");
}

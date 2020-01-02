#include <iostream>
using namespace std;

#include <absl/types/variant.h>

namespace
{
using absl::bad_variant_access;
using absl::get;
using absl::get_if;
using absl::holds_alternative;
using absl::monostate;
using absl::variant;
using absl::variant_alternative;
using absl::variant_alternative_t;
using absl::variant_npos;
using absl::variant_size;
using absl::variant_size_v;
using absl::visit;
}

struct S {
	S(int i) : i(i) {}
	int i;
};

int main()
{
	// Without the monostate type this declaration will fail.
	// This is because S is not default-constructible.
	variant<monostate, S> var;

	// var.index() is now 0 - the first element
	// std::get<S> will throw! We need to assign a value
	var = 12;
	cout << get<S>(var).i << '\n';

	return 0;
}

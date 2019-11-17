#pragma once

#include <memory>
#include <string>
#include <variant>
#include <vector>

namespace SimpleJson
{

class Value
{
	// TODO(Drogon): Type Array && Map
	// TODO(Drogon): operator <<
	// TODO(Drogon): indent && beautify
	// TODO(Drogon): void *
public:
	// null, bool, int, double, string

	Value() : value_(nullptr) {}
	Value(std::nullptr_t) : value_(nullptr) {}
	Value(bool value) : value_(value) {}
	// int
	Value(int32_t value) : value_(static_cast<int64_t>(value)) {}
	Value(int64_t value) : value_(value) {}
	// float
	Value(double value) : value_(value) {}
	Value(std::string value) : value_(std::move(value)) {}
	Value(const char *const value) : value_(std::string(value)) {}

	~Value() = default;

	std::string ToJson();

private:
	struct Wrapper;

	using ValueT = std::variant<std::nullptr_t, bool, int64_t, double,
				    std::string, std::vector<Wrapper>>;
	struct Wrapper {
		std::unique_ptr<ValueT> value;
	};

	ValueT value_;
};

inline std::string Value::ToJson()
{
	std::string result;

	result = std::visit(
	    [](auto &&value) -> std::string {
		    using Type = std::decay_t<decltype(value)>;

		    if constexpr (std::is_same_v<Type, std::nullptr_t>) {
			    return "null";
		    } else if constexpr (std::is_same_v<Type, bool>) {
			    if (value == true) {
				    return "true";
			    } else {
				    return "false";
			    }
		    } else if constexpr (std::is_same_v<Type, int64_t>) {
			    return std::to_string(value);
		    } else if constexpr (std::is_same_v<Type, double>) {
			    return std::to_string(value);
		    } else if constexpr (std::is_same_v<Type, std::string>) {
			    return std::string("\"") + value +
				   std::string("\"");
		    } else {
			    // vector
			    // TODO(Drogon): vector support
			    std::string result;
			    return result;
		    }
	    },
	    value_);

	return result;
}

} // namespace SimpleJson

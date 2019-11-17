#pragma once

#include <memory>

#include "value.hh"

namespace SimpleJson
{

class Json
{
	// TODO(Drogon): indent && beautify
public:
	// null, bool, int, double, string
	Json() = default;
	template <typename ValueType>
	Json(ValueType &&value) : value_(std::forward<ValueType>(value))
	{
	}
	~Json() = default;

public:
	std::string ToJson() { return value_.ToJson(); }

private:
	Value value_;
};

} // namespace SimpleJson

#pragma once

#include <type_traits>

template <typename EnumType>
constexpr auto to_underlying(EnumType value) noexcept
{
	return static_cast<typename std::underlying_type<EnumType>::type>(
	    value);
}

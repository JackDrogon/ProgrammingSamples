#pragma once

#include <memory>

namespace nepenthe::design_pattern
{

// @doc: can be deliver
// shared_ptr as gc is good
// if no one hold pointer or guarantee life can use unique_ptr & raw pointer
// unique_ptr just as raw
template <typename Type> class Singleton
{
public:
	static Type *Instance()
	{
		static Type instance;
		return &instance;
	}

protected:
	Singleton();
};

} // namespace nepenthe::design_pattern

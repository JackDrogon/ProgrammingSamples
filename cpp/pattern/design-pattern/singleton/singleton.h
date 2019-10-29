#pragma once

#include <memory>

namespace nepenthe {

namespace design_pattern {

// @doc: can be deliver
// shared_ptr as gc is good
// if no one hold pointer or guarantee life can use unique_ptr & raw pointer
// unique_ptr just as raw
template<typename Type>
class Singleton {
public:
	static Type *Instance()
	{
		if (instance_.get() == nullptr) {
			instance_.reset(new Type());
		}

		return instance_.get();
	}

protected:
	Singleton();
private:
	static std::unique_ptr<Type> instance_;
};

template <typename Type>
std::unique_ptr<Type> Singleton<Type>::instance_ = nullptr;

} // design_pattern

} // nepenthe

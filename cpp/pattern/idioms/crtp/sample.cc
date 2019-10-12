#include <iostream>
#include <memory>
using namespace std;

#include <boost/type_index.hpp>
using boost::typeindex::type_id_with_cvr;

namespace
{
template <typename Type> void print_type(Type &&type)
{
	cout << "Class => "
	     << type_id_with_cvr<decltype(std::forward<Type>(type))>()
		    .pretty_name()
	     << endl;
}
} // namespace

template <typename T> class Base
{
public:
	void show() const { static_cast<const T *>(this)->show(); }
};

class ShowMsg : public Base<ShowMsg>
{
public:
	void show() const
	{
		cout << "Shown in Derived class: ShowMsg." << endl;
	}

public:
	static auto make() { return std::make_unique<Base<ShowMsg>>(); }
};

int main()
{
	ShowMsg show_msg;
	Base<ShowMsg> *b = &show_msg;
	// cout << "Class => " << type_id_with_cvr<decltype(b)>().pretty_name()
	//      << endl;
	print_type(b);
	b->show();
	cout << "---------------------------------------" << endl;

	auto base = ShowMsg::make();
	cout << "Class => " << type_id_with_cvr<decltype(base)>().pretty_name()
	     << endl;
	base->show();

	return 0;
}

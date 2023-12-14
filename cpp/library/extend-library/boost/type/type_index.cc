#include <functional>
#include <iostream>

#include <boost/type_index.hpp>

using boost::typeindex::type_id_with_cvr;
using namespace std;

void print(int, int) { cout << __PRETTY_FUNCTION__ << endl; }

int main()
{
	auto f = bind(print, placeholders::_1, placeholders::_2);
	cout << type_id_with_cvr<decltype(f)>().pretty_name() << endl;
	f(2, 3);
}

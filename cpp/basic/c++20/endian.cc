#include <iostream>
#include <type_traits> // contain endian
using namespace std;

namespace
{

inline auto _print_native_endian()
{
	switch (endian::native) {
	case endian::big:
		cout << "Native byte order is BigEndian." << endl;
		break;
	case endian::little:
		cout << "Native byte order is LittleEndian." << endl;
		break;
	default:
		cout << "Unkown Native Byte Order." << endl;
	}
}

} // namespace

int main()
{
	_print_native_endian();

	return 0;
}

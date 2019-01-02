#include <iostream>
#include <type_traits> // contain endian
using namespace std;

void PrintNativeEndian()
{
	switch (endian::native) {
	case endian::big:
		cout << "Native byte order is BigEndian." << endl;
		break;
	case endian::little:
		cout << "Native byte order is LittleEndian." << endl;
		break;
	default:
		cout << "Unkown Native Byte Order" << endl;
	}
}

int main()
{
	PrintNativeEndian();
	return 0;
}

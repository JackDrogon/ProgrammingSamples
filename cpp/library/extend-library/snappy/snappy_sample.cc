#include <iostream>
#include <assert.h>
#include <snappy.h>
#include <string>
using namespace std;

int main()
{
	string source = "Hello World!Hello World!";
	string compressed, decompressed;

	snappy::Compress(source.data(), source.size(), &compressed);
	snappy::Uncompress(compressed.data(), compressed.size(), &decompressed);

	assert(source == decompressed);
	cout << compressed << endl;

	return 0;
}

#include <iostream>
using namespace std;

#include "json.hh"
using SimpleJson::Json;

int main()
{
	cout << Json(nullptr).ToJson() << endl;
	cout << Json(1).ToJson() << endl;
	cout << Json(true).ToJson() << endl;
	cout << Json(false).ToJson() << endl;
	cout << Json(1.2).ToJson() << endl;
	cout << Json("hello").ToJson() << endl;

	return 0;
}

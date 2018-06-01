#include <iostream>
using namespace std;

struct Point {
	int x, y;
};
void fun(const Point &p)
{
	cout << "Point: (" << p.x << "," << p.y << ")" << endl;
}

int main()
{
	fun(Point{1, 2});

	return 0;
}

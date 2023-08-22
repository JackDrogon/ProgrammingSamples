int n = 10;
void f1()
{
	if (n == 16) {
		throw 3;
	}
}

void f2() { f1(); }

void f3() { f3(); }

int main()
{
	try {
	} catch (int m) {
		return m;
	}

	return 0;
}

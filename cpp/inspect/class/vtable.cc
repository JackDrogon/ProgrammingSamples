struct Base {
	Base(int n_arg) : n(n_arg) {}
	virtual ~Base() = default;

	virtual int get() { return n; }
	int n;
};

struct Derived : Base {
	Derived(int n_arg) : Base(n_arg) {}
	virtual int get() { return n + 10; }
};

int main()
{
	Derived d(10);
	static_cast<Base *>(&d)->get();

	return 0;
}

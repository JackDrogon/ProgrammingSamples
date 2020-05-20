struct RawBase {
	RawBase(int n_arg) : n(n_arg) {}
	~RawBase() = default;

	int get() { return n; }
	int n;
};

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
	RawBase r(10);
	Base b(10);
	Derived d(10);

	return 0;
}

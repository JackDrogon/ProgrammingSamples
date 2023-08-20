struct Base {
	Base(int n_arg) : n(n_arg) {}
	virtual ~Base() = default;

	virtual int get() = 0;
	int n;
};

struct Derived : Base {
	Derived(int n_arg) : Base(n_arg) {}
	virtual int get() { return n + 10; }
};
int get(Base *b) { return b->get(); }

int main()
{
	Derived d(10);
	get(static_cast<Base *>(&d));
	return 0;
}

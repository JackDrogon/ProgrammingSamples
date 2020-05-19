struct Base {
	Base(int n_arg) : n(n_arg) {}
	~Base() = default;

	int get() { return n; }
	int n;
};

int main(void)
{
	Base b(10);
	return 0;
}

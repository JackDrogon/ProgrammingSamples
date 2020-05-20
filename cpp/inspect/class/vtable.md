# Cpp Virtual Table


```cpp
struct Base {
	Base(int n_arg) : n(n_arg) {}
	virtual ~Base() = default;

	virtual int get() { return n; }
	int n;
};
```

```cpp
struct Derived : Base {
	Derived(int n_arg) : Base(n_arg) {}
	virtual int get() { return n + 10; }
};
```

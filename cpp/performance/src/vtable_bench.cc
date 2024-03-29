#include <iostream>
using namespace std;

#include <benchmark/benchmark.h>

// FIXME: 这里使用vtable 没有明显劣势, 应该是都是在Cache中了, check一下汇编
class Base
{
public:
	virtual ~Base() = default;
	virtual int f(int n) { return n + 1; }
};

class Derive : public Base
{
public:
	virtual int f(int n) { return n + 2; }
};

static void BM_NoVtable(benchmark::State &state)
{
	Base b;
	int i = 0;
	while (state.KeepRunning()) {
		benchmark::DoNotOptimize(i = b.f(i));
	}
	// cout << i << endl;
}
BENCHMARK(BM_NoVtable);

static void BM_Vtable(benchmark::State &state)
{
	Derive d;
	Base *b = &d;
	int i = 0;
	while (state.KeepRunning()) {
		benchmark::DoNotOptimize(i = b->f(i));
	}
	// cout << i << endl;
}
BENCHMARK(BM_Vtable);

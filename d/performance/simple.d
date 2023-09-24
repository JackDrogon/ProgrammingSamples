import std.conv : to;

int a;
void f0() {}
void f1() { auto b = a; }
void f2() { auto b = to!string(a); }
auto r = benchmark!(f0, f1, f2)(10_000);
Duration f0Result = r[0]; // time f0 took to run 10,000 times
Duration f1Result = r[1]; // time f1 took to run 10,000 times
Duration f2Result = r[2]; // time f2 took to run 10,000 times

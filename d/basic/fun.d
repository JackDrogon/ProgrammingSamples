import std.stdio;

void fun(ref uint x, double y) 
{
	x = 42;
	y = 3.14;
}

void main(string[] args)
{
	uint a = 1;
	double b = 2;
	writeln(a, " ", b);
	fun(a, b);
	writeln(a, " ", b);
}

import std.stdio;

void main(string[] args)
{
	int[4] a;
	int b[10];
	int c[10][10];

	//writeln(typeof("Hello"));
	writeln(typeid("Hello"));
	writeln(typeid(typeof("Hello")));
}
